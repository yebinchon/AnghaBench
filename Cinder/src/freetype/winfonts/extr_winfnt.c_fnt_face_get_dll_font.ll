; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_fnt_face_get_dll_font.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_fnt_face_get_dll_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_22__, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i64 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__* }

@winmz_header_fields = common dso_local global i32 0, align 4
@Unknown_File_Format = common dso_local global i32 0, align 4
@WINFNT_MZ_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"MZ signature found\0A\00", align 1
@winne_header_fields = common dso_local global i32 0, align 4
@WINFNT_NE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"NE signature found\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"invalid alignment shift count for resource data\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"this file doesn't contain any FNT resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid number of faces\0A\00", align 1
@Invalid_Argument = common dso_local global i32 0, align 4
@WINFNT_PE_MAGIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"PE signature found\0A\00", align 1
@winpe32_header_fields = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [138 x i8] c"magic %04lx, machine %02x, number_of_sections %u, size_of_optional_header %02x\0Amagic32 %02x, rsrc_virtual_address %04lx, rsrc_size %04lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"this file has an invalid PE header\0A\00", align 1
@winpe32_section_fields = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"name %.8s, va %04lx, size %04lx, offset %04lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"this file doesn't contain any resources\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"found resources section %.8s\0A\00", align 1
@winpe_rsrc_dir_fields = common dso_local global i32 0, align 4
@winpe_rsrc_dir_entry_fields = common dso_local global i32 0, align 4
@winpe_rsrc_data_entry_fields = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"found font #%lu, offset %04lx, size %04lx, cp %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"font #%lu load error 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"font #%lu successfully loaded\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"this file doesn't contain any RT_FONT resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i64)* @fnt_face_get_dll_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fnt_face_get_dll_font(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca %struct.TYPE_23__, align 8
  %21 = alloca %struct.TYPE_23__, align 8
  %22 = alloca %struct.TYPE_23__, align 8
  %23 = alloca %struct.TYPE_23__, align 8
  %24 = alloca %struct.TYPE_23__, align 8
  %25 = alloca %struct.TYPE_23__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i64 %1, i64* %4, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = call %struct.TYPE_21__* @FT_FACE(%struct.TYPE_19__* %32)
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = call %struct.TYPE_21__* @FT_FACE(%struct.TYPE_19__* %36)
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @FT_ABS(i64 %42)
  %44 = and i32 %43, 65535
  store i32 %44, i32* %9, align 4
  %45 = call i64 @FT_STREAM_SEEK(i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @winmz_header_fields, align 4
  %49 = call i64 @FT_STREAM_READ_FIELDS(i32 %48, %struct.TYPE_23__* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %2
  br label %606

52:                                               ; preds = %47
  %53 = load i32, i32* @Unknown_File_Format, align 4
  %54 = call i64 @FT_ERR(i32 %53)
  store i64 %54, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WINFNT_MZ_MAGIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %598

59:                                               ; preds = %52
  %60 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @FT_STREAM_SEEK(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @winne_header_fields, align 4
  %67 = call i64 @FT_STREAM_READ_FIELDS(i32 %66, %struct.TYPE_23__* %10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %59
  br label %606

70:                                               ; preds = %65
  %71 = load i32, i32* @Unknown_File_Format, align 4
  %72 = call i64 @FT_ERR(i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WINFNT_NE_MAGIC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %218

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %83 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @FT_STREAM_SEEK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %89, %91
  %93 = call i64 @FT_FRAME_ENTER(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %77
  br label %606

96:                                               ; preds = %87
  %97 = call i32 (...) @FT_GET_USHORT_LE()
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 16
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @Invalid_File_Format, align 4
  %103 = call i64 @FT_THROW(i32 %102)
  store i64 %103, i64* %5, align 8
  br label %606

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %127, %104
  %106 = call i32 (...) @FT_GET_USHORT_LE()
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %136

110:                                              ; preds = %105
  %111 = call i32 (...) @FT_GET_USHORT_LE()
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 32776
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %13, align 4
  %116 = call i32 (...) @FT_STREAM_POS()
  %117 = add nsw i32 %116, 4
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %117, %125
  store i32 %126, i32* %14, align 4
  br label %136

127:                                              ; preds = %110
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 %128, 12
  %130 = add nsw i32 4, %129
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %105

136:                                              ; preds = %114, %109
  %137 = call i32 (...) @FT_FRAME_EXIT()
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140, %136
  %144 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @Invalid_File_Format, align 4
  %146 = call i64 @FT_THROW(i32 %145)
  store i64 %146, i64* %5, align 8
  br label %606

147:                                              ; preds = %140
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 118
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp ugt i64 %150, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @Invalid_File_Format, align 4
  %159 = call i64 @FT_THROW(i32 %158)
  store i64 %159, i64* %5, align 8
  br label %606

160:                                              ; preds = %147
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i64, i64* %4, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %606

168:                                              ; preds = %160
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @Invalid_Argument, align 4
  %174 = call i64 @FT_THROW(i32 %173)
  store i64 %174, i64* %5, align 8
  br label %606

175:                                              ; preds = %168
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = call i64 @FT_NEW(%struct.TYPE_20__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %606

182:                                              ; preds = %175
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %9, align 4
  %185 = mul nsw i32 %184, 12
  %186 = add nsw i32 %183, %185
  %187 = call i64 @FT_STREAM_SEEK(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = call i64 @FT_FRAME_ENTER(i32 12)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %182
  br label %599

193:                                              ; preds = %189
  %194 = call i32 (...) @FT_GET_USHORT_LE()
  %195 = load i32, i32* %12, align 4
  %196 = shl i32 %194, %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 4
  %201 = call i32 (...) @FT_GET_USHORT_LE()
  %202 = load i32, i32* %12, align 4
  %203 = shl i32 %201, %202
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  store i32 %203, i32* %207, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 8
  store i64 %211, i64* %209, align 8
  %212 = call i32 (...) @FT_FRAME_EXIT()
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %217 = call i64 @fnt_font_load(%struct.TYPE_20__* %215, %struct.TYPE_24__* %216)
  store i64 %217, i64* %5, align 8
  br label %577

218:                                              ; preds = %70
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @WINFNT_PE_MAGIC, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %576

223:                                              ; preds = %218
  %224 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @FT_STREAM_SEEK(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* @winpe32_header_fields, align 4
  %231 = call i64 @FT_STREAM_READ_FIELDS(i32 %230, %struct.TYPE_23__* %17)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229, %223
  br label %606

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 8
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 19
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 @FT_TRACE2(i8* %250)
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @WINFNT_PE_MAGIC, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %268, label %256

256:                                              ; preds = %234
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 332
  br i1 %259, label %268, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 224
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 267
  br i1 %267, label %268, label %272

268:                                              ; preds = %264, %260, %256, %234
  %269 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %270 = load i32, i32* @Invalid_File_Format, align 4
  %271 = call i64 @FT_THROW(i32 %270)
  store i64 %271, i64* %5, align 8
  br label %606

272:                                              ; preds = %264
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 0
  store i32 0, i32* %275, align 8
  store i32 0, i32* %29, align 4
  br label %276

276:                                              ; preds = %305, %272
  %277 = load i32, i32* %29, align 4
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %277, %279
  br i1 %280, label %281, label %308

281:                                              ; preds = %276
  %282 = load i32, i32* @winpe32_section_fields, align 4
  %283 = call i64 @FT_STREAM_READ_FIELDS(i32 %282, %struct.TYPE_23__* %18)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  br label %606

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 10
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 18
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  %297 = call i32 @FT_TRACE2(i8* %296)
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 10
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %299, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %286
  br label %312

304:                                              ; preds = %286
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %29, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %29, align 4
  br label %276

308:                                              ; preds = %276
  %309 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %310 = load i32, i32* @Invalid_File_Format, align 4
  %311 = call i64 @FT_THROW(i32 %310)
  store i64 %311, i64* %5, align 8
  br label %606

312:                                              ; preds = %303
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = inttoptr i64 %315 to i8*
  %317 = call i32 @FT_TRACE2(i8* %316)
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %319 = load i32, i32* %318, align 8
  %320 = call i64 @FT_STREAM_SEEK(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %312
  %323 = load i32, i32* @winpe_rsrc_dir_fields, align 4
  %324 = call i64 @FT_STREAM_READ_FIELDS(i32 %323, %struct.TYPE_23__* %19)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %322, %312
  br label %606

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %26, align 4
  store i32 0, i32* %29, align 4
  br label %330

330:                                              ; preds = %572, %327
  %331 = load i32, i32* %29, align 4
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 12
  %333 = load i32, i32* %332, align 4
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 13
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %333, %335
  %337 = icmp slt i32 %331, %336
  br i1 %337, label %338, label %575

338:                                              ; preds = %330
  %339 = load i32, i32* %26, align 4
  %340 = add nsw i32 %339, 16
  %341 = load i32, i32* %29, align 4
  %342 = mul nsw i32 %341, 8
  %343 = add nsw i32 %340, %342
  %344 = call i64 @FT_STREAM_SEEK(i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %338
  %347 = load i32, i32* @winpe_rsrc_dir_entry_fields, align 4
  %348 = call i64 @FT_STREAM_READ_FIELDS(i32 %347, %struct.TYPE_23__* %22)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346, %338
  br label %606

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 14
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = and i64 %354, 2147483648
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %351
  %358 = load i32, i32* @Invalid_File_Format, align 4
  %359 = call i64 @FT_THROW(i32 %358)
  store i64 %359, i64* %5, align 8
  br label %606

360:                                              ; preds = %351
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 14
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = and i64 %363, -2147483649
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %361, align 4
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 14
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %367, %369
  store i32 %370, i32* %27, align 4
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %372 = load i32, i32* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 14
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %372, %374
  %376 = call i64 @FT_STREAM_SEEK(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %360
  %379 = load i32, i32* @winpe_rsrc_dir_fields, align 4
  %380 = call i64 @FT_STREAM_READ_FIELDS(i32 %379, %struct.TYPE_23__* %20)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %378, %360
  br label %606

383:                                              ; preds = %378
  store i32 0, i32* %30, align 4
  br label %384

384:                                              ; preds = %568, %383
  %385 = load i32, i32* %30, align 4
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 12
  %387 = load i32, i32* %386, align 4
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 13
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %387, %389
  %391 = icmp slt i32 %385, %390
  br i1 %391, label %392, label %571

392:                                              ; preds = %384
  %393 = load i32, i32* %27, align 4
  %394 = add nsw i32 %393, 16
  %395 = load i32, i32* %30, align 4
  %396 = mul nsw i32 %395, 8
  %397 = add nsw i32 %394, %396
  %398 = call i64 @FT_STREAM_SEEK(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %404, label %400

400:                                              ; preds = %392
  %401 = load i32, i32* @winpe_rsrc_dir_entry_fields, align 4
  %402 = call i64 @FT_STREAM_READ_FIELDS(i32 %401, %struct.TYPE_23__* %23)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400, %392
  br label %606

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 14
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = and i64 %408, 2147483648
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %405
  %412 = load i32, i32* @Invalid_File_Format, align 4
  %413 = call i64 @FT_THROW(i32 %412)
  store i64 %413, i64* %5, align 8
  br label %606

414:                                              ; preds = %405
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 14
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = and i64 %417, -2147483649
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %415, align 4
  %420 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %421 = load i32, i32* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 14
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %421, %423
  store i32 %424, i32* %28, align 4
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %426 = load i32, i32* %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 14
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %426, %428
  %430 = call i64 @FT_STREAM_SEEK(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %436, label %432

432:                                              ; preds = %414
  %433 = load i32, i32* @winpe_rsrc_dir_fields, align 4
  %434 = call i64 @FT_STREAM_READ_FIELDS(i32 %433, %struct.TYPE_23__* %21)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %432, %414
  br label %606

437:                                              ; preds = %432
  store i32 0, i32* %31, align 4
  br label %438

438:                                              ; preds = %564, %437
  %439 = load i32, i32* %31, align 4
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 12
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 13
  %443 = load i32, i32* %442, align 8
  %444 = add nsw i32 %441, %443
  %445 = icmp slt i32 %439, %444
  br i1 %445, label %446, label %567

446:                                              ; preds = %438
  %447 = load i32, i32* %28, align 4
  %448 = add nsw i32 %447, 16
  %449 = load i32, i32* %31, align 4
  %450 = mul nsw i32 %449, 8
  %451 = add nsw i32 %448, %450
  %452 = call i64 @FT_STREAM_SEEK(i32 %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %458, label %454

454:                                              ; preds = %446
  %455 = load i32, i32* @winpe_rsrc_dir_entry_fields, align 4
  %456 = call i64 @FT_STREAM_READ_FIELDS(i32 %455, %struct.TYPE_23__* %24)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %454, %446
  br label %606

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 14
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = and i64 %462, 2147483648
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %459
  %466 = load i32, i32* @Invalid_File_Format, align 4
  %467 = call i64 @FT_THROW(i32 %466)
  store i64 %467, i64* %5, align 8
  br label %606

468:                                              ; preds = %459
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 9
  %470 = load i32, i32* %469, align 8
  %471 = icmp eq i32 %470, 8
  br i1 %471, label %472, label %563

472:                                              ; preds = %468
  %473 = load i32, i32* %26, align 4
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 14
  %475 = load i32, i32* %474, align 4
  %476 = add nsw i32 %473, %475
  %477 = call i64 @FT_STREAM_SEEK(i32 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %483, label %479

479:                                              ; preds = %472
  %480 = load i32, i32* @winpe_rsrc_data_entry_fields, align 4
  %481 = call i64 @FT_STREAM_READ_FIELDS(i32 %480, %struct.TYPE_23__* %25)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %479, %472
  br label %606

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 9
  %486 = load i32, i32* %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %488 = load i32, i32* %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 15
  %490 = load i32, i32* %489, align 8
  %491 = add nsw i32 %488, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 10
  %494 = load i64, i64* %493, align 8
  %495 = sub nsw i64 %492, %494
  %496 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 16
  %497 = load i32, i32* %496, align 4
  %498 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 17
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = inttoptr i64 %500 to i8*
  %502 = call i32 @FT_TRACE2(i8* %501)
  %503 = load i32, i32* %9, align 4
  %504 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = icmp eq i32 %503, %507
  br i1 %508, label %509, label %557

509:                                              ; preds = %484
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 1
  %512 = load %struct.TYPE_20__*, %struct.TYPE_20__** %511, align 8
  %513 = call i64 @FT_NEW(%struct.TYPE_20__* %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %509
  br label %606

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 11
  %518 = load i32, i32* %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 15
  %520 = load i32, i32* %519, align 8
  %521 = add nsw i32 %518, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 10
  %524 = load i64, i64* %523, align 8
  %525 = sub nsw i64 %522, %524
  %526 = trunc i64 %525 to i32
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 1
  %529 = load %struct.TYPE_20__*, %struct.TYPE_20__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 0
  store i32 %526, i32* %530, align 4
  %531 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 16
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %533, i32 0, i32 1
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 1
  store i32 %532, i32* %536, align 4
  %537 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_20__*, %struct.TYPE_20__** %538, align 8
  %540 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %541 = call i64 @fnt_font_load(%struct.TYPE_20__* %539, %struct.TYPE_24__* %540)
  store i64 %541, i64* %5, align 8
  %542 = load i64, i64* %5, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %516
  %545 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 9
  %546 = load i32, i32* %545, align 8
  %547 = load i64, i64* %5, align 8
  %548 = inttoptr i64 %547 to i8*
  %549 = call i32 @FT_TRACE2(i8* %548)
  br label %599

550:                                              ; preds = %516
  %551 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 9
  %552 = load i32, i32* %551, align 8
  %553 = sext i32 %552 to i64
  %554 = inttoptr i64 %553 to i8*
  %555 = call i32 @FT_TRACE2(i8* %554)
  br label %556

556:                                              ; preds = %550
  br label %557

557:                                              ; preds = %556, %484
  %558 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %559 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %560, align 8
  br label %563

563:                                              ; preds = %557, %468
  br label %564

564:                                              ; preds = %563
  %565 = load i32, i32* %31, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %31, align 4
  br label %438

567:                                              ; preds = %438
  br label %568

568:                                              ; preds = %567
  %569 = load i32, i32* %30, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %30, align 4
  br label %384

571:                                              ; preds = %384
  br label %572

572:                                              ; preds = %571
  %573 = load i32, i32* %29, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %29, align 4
  br label %330

575:                                              ; preds = %330
  br label %576

576:                                              ; preds = %575, %218
  br label %577

577:                                              ; preds = %576, %193
  %578 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %579 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %587, label %583

583:                                              ; preds = %577
  %584 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  %585 = load i32, i32* @Invalid_File_Format, align 4
  %586 = call i64 @FT_THROW(i32 %585)
  store i64 %586, i64* %5, align 8
  br label %606

587:                                              ; preds = %577
  %588 = load i32, i32* %9, align 4
  %589 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp sge i32 %588, %592
  br i1 %593, label %594, label %597

594:                                              ; preds = %587
  %595 = load i32, i32* @Invalid_Argument, align 4
  %596 = call i64 @FT_THROW(i32 %595)
  store i64 %596, i64* %5, align 8
  br label %606

597:                                              ; preds = %587
  br label %598

598:                                              ; preds = %597, %52
  br label %599

599:                                              ; preds = %598, %544, %192
  %600 = load i64, i64* %5, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %599
  %603 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %604 = call i32 @fnt_font_done(%struct.TYPE_19__* %603)
  br label %605

605:                                              ; preds = %602, %599
  br label %606

606:                                              ; preds = %605, %594, %583, %515, %483, %465, %458, %436, %411, %404, %382, %357, %350, %326, %308, %285, %268, %233, %181, %172, %167, %156, %143, %100, %95, %69, %51
  %607 = load i64, i64* %5, align 8
  ret i64 %607
}

declare dso_local %struct.TYPE_21__* @FT_FACE(%struct.TYPE_19__*) #1

declare dso_local i32 @FT_ABS(i64) #1

declare dso_local i64 @FT_STREAM_SEEK(i32) #1

declare dso_local i64 @FT_STREAM_READ_FIELDS(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @FT_ERR(i32) #1

declare dso_local i32 @FT_TRACE2(i8*) #1

declare dso_local i64 @FT_FRAME_ENTER(i32) #1

declare dso_local i32 @FT_GET_USHORT_LE(...) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @FT_STREAM_POS(...) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

declare dso_local i64 @FT_NEW(%struct.TYPE_20__*) #1

declare dso_local i64 @fnt_font_load(%struct.TYPE_20__*, %struct.TYPE_24__*) #1

declare dso_local i32 @fnt_font_done(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
