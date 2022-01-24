#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  float byte ;
struct TYPE_12__ {int maxTextureSize; scalar_t__ textureCompression; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {unsigned int* (* Hunk_AllocateTempMemory ) (int) ;int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (unsigned int*) ;} ;
typedef  int GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int GL_RGB ; 
 int GL_RGB4_S3TC ; 
 int GL_RGB5 ; 
 int GL_RGB8 ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int GL_RGBA4 ; 
 int GL_RGBA8 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC2 (float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int,int,unsigned int*,int,int) ; 
 scalar_t__ TC_S3TC ; 
 TYPE_6__ glConfig ; 
 int /*<<< orphan*/  gl_filter_max ; 
 int /*<<< orphan*/  gl_filter_min ; 
 int /*<<< orphan*/ * mipBlendColors ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* r_colorMipLevels ; 
 TYPE_4__* r_picmip ; 
 TYPE_3__* r_roundImagesDown ; 
 TYPE_2__* r_texturebits ; 
 TYPE_1__ ri ; 
 unsigned int* FUNC8 (int) ; 
 unsigned int* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int*) ; 

__attribute__((used)) static void FUNC12( unsigned *data, 
						  int width, int height, 
						  qboolean mipmap, 
						  qboolean picmip, 
							qboolean lightMap,
						  int *format, 
						  int *pUploadWidth, int *pUploadHeight )
{
	int			samples;
	unsigned	*scaledBuffer = NULL;
	unsigned	*resampledBuffer = NULL;
	int			scaled_width, scaled_height;
	int			i, c;
	byte		*scan;
	GLenum		internalFormat = GL_RGB;
	float		rMax = 0, gMax = 0, bMax = 0;

	//
	// convert to exact power of 2 sizes
	//
	for (scaled_width = 1 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 ; scaled_height < height ; scaled_height<<=1)
		;
	if ( r_roundImagesDown->integer && scaled_width > width )
		scaled_width >>= 1;
	if ( r_roundImagesDown->integer && scaled_height > height )
		scaled_height >>= 1;

	if ( scaled_width != width || scaled_height != height ) {
		resampledBuffer = ri.Hunk_AllocateTempMemory( scaled_width * scaled_height * 4 );
		FUNC5 (data, width, height, resampledBuffer, scaled_width, scaled_height);
		data = resampledBuffer;
		width = scaled_width;
		height = scaled_height;
	}

	//
	// perform optional picmip operation
	//
	if ( picmip ) {
		scaled_width >>= r_picmip->integer;
		scaled_height >>= r_picmip->integer;
	}

	//
	// clamp to minimum size
	//
	if (scaled_width < 1) {
		scaled_width = 1;
	}
	if (scaled_height < 1) {
		scaled_height = 1;
	}

	//
	// clamp to the current upper OpenGL limit
	// scale both axis down equally so we don't have to
	// deal with a half mip resampling
	//
	while ( scaled_width > glConfig.maxTextureSize
		|| scaled_height > glConfig.maxTextureSize ) {
		scaled_width >>= 1;
		scaled_height >>= 1;
	}

	scaledBuffer = ri.Hunk_AllocateTempMemory( sizeof( unsigned ) * scaled_width * scaled_height );

	//
	// scan the texture for each channel's max values
	// and verify if the alpha channel is being used or not
	//
	c = width*height;
	scan = ((byte *)data);
	samples = 3;
	if (!lightMap) {
		for ( i = 0; i < c; i++ )
		{
			if ( scan[i*4+0] > rMax )
			{
				rMax = scan[i*4+0];
			}
			if ( scan[i*4+1] > gMax )
			{
				gMax = scan[i*4+1];
			}
			if ( scan[i*4+2] > bMax )
			{
				bMax = scan[i*4+2];
			}
			if ( scan[i*4 + 3] != 255 ) 
			{
				samples = 4;
				break;
			}
		}
		// select proper internal format
		if ( samples == 3 )
		{
			if ( glConfig.textureCompression == TC_S3TC )
			{
				internalFormat = GL_RGB4_S3TC;
			}
			else if ( r_texturebits->integer == 16 )
			{
				internalFormat = GL_RGB5;
			}
			else if ( r_texturebits->integer == 32 )
			{
				internalFormat = GL_RGB8;
			}
			else
			{
				internalFormat = 3;
			}
		}
		else if ( samples == 4 )
		{
			if ( r_texturebits->integer == 16 )
			{
				internalFormat = GL_RGBA4;
			}
			else if ( r_texturebits->integer == 32 )
			{
				internalFormat = GL_RGBA8;
			}
			else
			{
				internalFormat = 4;
			}
		}
	} else {
		internalFormat = 3;
	}
	// copy or resample data as appropriate for first MIP level
	if ( ( scaled_width == width ) && 
		( scaled_height == height ) ) {
		if (!mipmap)
		{
			FUNC6 (GL_TEXTURE_2D, 0, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
			*pUploadWidth = scaled_width;
			*pUploadHeight = scaled_height;
			*format = internalFormat;

			goto done;
		}
		FUNC0 (scaledBuffer, data, width*height*4);
	}
	else
	{
		// use the normal mip-mapping function to go down from here
		while ( width > scaled_width || height > scaled_height ) {
			FUNC4( (byte *)data, width, height );
			width >>= 1;
			height >>= 1;
			if ( width < 1 ) {
				width = 1;
			}
			if ( height < 1 ) {
				height = 1;
			}
		}
		FUNC0( scaledBuffer, data, width * height * 4 );
	}

	FUNC3 (scaledBuffer, scaled_width, scaled_height, !mipmap );

	*pUploadWidth = scaled_width;
	*pUploadHeight = scaled_height;
	*format = internalFormat;

	FUNC6 (GL_TEXTURE_2D, 0, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );

	if (mipmap)
	{
		int		miplevel;

		miplevel = 0;
		while (scaled_width > 1 || scaled_height > 1)
		{
			FUNC4( (byte *)scaledBuffer, scaled_width, scaled_height );
			scaled_width >>= 1;
			scaled_height >>= 1;
			if (scaled_width < 1)
				scaled_width = 1;
			if (scaled_height < 1)
				scaled_height = 1;
			miplevel++;

			if ( r_colorMipLevels->integer ) {
				FUNC2( (byte *)scaledBuffer, scaled_width * scaled_height, mipBlendColors[miplevel] );
			}

			FUNC6 (GL_TEXTURE_2D, miplevel, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );
		}
	}
done:

	if (mipmap)
	{
		FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, gl_filter_min);
		FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, gl_filter_max);
	}
	else
	{
		FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
		FUNC7(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
	}

	FUNC1();

	if ( scaledBuffer != 0 )
		ri.Hunk_FreeTempMemory( scaledBuffer );
	if ( resampledBuffer != 0 )
		ri.Hunk_FreeTempMemory( resampledBuffer );
}