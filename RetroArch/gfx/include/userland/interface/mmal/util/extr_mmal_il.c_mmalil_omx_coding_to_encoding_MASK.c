#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  OMX_VIDEO_CODINGTYPE ;
typedef  scalar_t__ OMX_PORTDOMAINTYPE ;
typedef  int /*<<< orphan*/  OMX_IMAGE_CODINGTYPE ;
typedef  int /*<<< orphan*/  OMX_AUDIO_CODINGTYPE ;

/* Variables and functions */
 scalar_t__ MMAL_ENCODING_UNKNOWN ; 
 scalar_t__ OMX_PortDomainAudio ; 
 scalar_t__ OMX_PortDomainImage ; 
 scalar_t__ OMX_PortDomainVideo ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t encoding, OMX_PORTDOMAINTYPE domain)
{
   if(domain == OMX_PortDomainVideo)
      return FUNC2((OMX_VIDEO_CODINGTYPE)encoding);
   else if(domain == OMX_PortDomainAudio)
      return FUNC0((OMX_AUDIO_CODINGTYPE)encoding);
   else if(domain == OMX_PortDomainImage)
      return FUNC1((OMX_IMAGE_CODINGTYPE)encoding);
   else
      return MMAL_ENCODING_UNKNOWN;
}