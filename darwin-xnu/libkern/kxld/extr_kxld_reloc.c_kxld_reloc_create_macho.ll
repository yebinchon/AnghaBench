; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_reloc.c_kxld_reloc_create_macho.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_reloc.c_kxld_reloc_create_macho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i64)*, i64 (i64)*, i64, i64 (i64)* }
%struct.relocation_info = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i64, i8*, i8*, i32, i32 }
%struct.scattered_relocation_info = type { i32, i64, i64, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@R_SCATTERED = common dso_local global i32 0, align 4
@R_ABS = common dso_local global i64 0, align 8
@KXLD_TARGET_LOOKUP = common dso_local global i8* null, align 8
@KXLD_TARGET_SECTNUM = common dso_local global i8* null, align 8
@KXLD_TARGET_SYMBOLNUM = common dso_local global i8* null, align 8
@KXLD_TARGET_VALUE = common dso_local global i8* null, align 8
@KXLD_TARGET_GOT = common dso_local global i8* null, align 8
@KXLD_TARGET_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_reloc_create_macho(%struct.relocation_info* %0, %struct.TYPE_6__* %1, %struct.relocation_info* %2, i64 %3) #0 {
  %5 = alloca %struct.relocation_info*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.relocation_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.relocation_info*, align 8
  %13 = alloca %struct.scattered_relocation_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.relocation_info* %0, %struct.relocation_info** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.relocation_info* %2, %struct.relocation_info** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %16, i32* %9, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.relocation_info* null, %struct.relocation_info** %12, align 8
  store %struct.scattered_relocation_info* null, %struct.scattered_relocation_info** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.relocation_info*, %struct.relocation_info** %5, align 8
  %18 = call i32 @check(%struct.relocation_info* %17)
  %19 = load %struct.relocation_info*, %struct.relocation_info** %7, align 8
  %20 = call i32 @check(%struct.relocation_info* %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %24, i32* %9, align 4
  br label %298

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load %struct.relocation_info*, %struct.relocation_info** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @count_relocatable_relocs(%struct.TYPE_6__* %26, %struct.relocation_info* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %296

32:                                               ; preds = %25
  %33 = load %struct.relocation_info*, %struct.relocation_info** %5, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @kxld_array_init(%struct.relocation_info* %33, i32 64, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @finish, align 4
  %38 = call i32 @require_noerr(i32 %36, i32 %37)
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %292, %32
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %295

43:                                               ; preds = %39
  %44 = load %struct.relocation_info*, %struct.relocation_info** %7, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %44, i64 %45
  store %struct.relocation_info* %46, %struct.relocation_info** %12, align 8
  %47 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %48 = bitcast %struct.relocation_info* %47 to %struct.scattered_relocation_info*
  store %struct.scattered_relocation_info* %48, %struct.scattered_relocation_info** %13, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %55 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @R_SCATTERED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %53, %43
  %61 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %62 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @R_ABS, align 8
  %67 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %68 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %292

72:                                               ; preds = %65, %60, %53
  %73 = load %struct.relocation_info*, %struct.relocation_info** %5, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %15, align 8
  %76 = trunc i64 %74 to i32
  %77 = call %struct.TYPE_7__* @kxld_array_get_item(%struct.relocation_info* %73, i32 %76)
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %10, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %72
  %83 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %84 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @R_SCATTERED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %82
  %90 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %91 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %96 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %101 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %106 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %111 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load i8*, i8** @KXLD_TARGET_LOOKUP, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  br label %161

118:                                              ; preds = %82, %72
  %119 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %120 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %125 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  %129 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %130 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %135 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %140 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %145 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 0, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %118
  %149 = load i8*, i8** @KXLD_TARGET_SECTNUM, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %160

156:                                              ; preds = %118
  %157 = load i8*, i8** @KXLD_TARGET_SYMBOLNUM, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %156, %148
  br label %161

161:                                              ; preds = %160, %89
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i64 (i64)*, i64 (i64)** %163, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i64 %164(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %271

170:                                              ; preds = %161
  %171 = load i64, i64* %14, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp slt i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* @finish, align 4
  %178 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %178, i32* %9, align 4
  %179 = call i32 @require_action(i32 %176, i32 %177, i32 %178)
  %180 = load %struct.relocation_info*, %struct.relocation_info** %7, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %180, i64 %181
  store %struct.relocation_info* %182, %struct.relocation_info** %12, align 8
  %183 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %184 = bitcast %struct.relocation_info* %183 to %struct.scattered_relocation_info*
  store %struct.scattered_relocation_info* %184, %struct.scattered_relocation_info** %13, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %170
  %190 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %191 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @R_SCATTERED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %225

196:                                              ; preds = %189
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64 (i64)*, i64 (i64)** %198, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i64 %199(i64 %202)
  %204 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %205 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %203, %206
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* @finish, align 4
  %210 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %210, i32* %9, align 4
  %211 = call i32 @require_action(i32 %208, i32 %209, i32 %210)
  %212 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %213 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  %217 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %218 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load i8*, i8** @KXLD_TARGET_LOOKUP, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  br label %270

225:                                              ; preds = %189, %170
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i64 (i64)*, i64 (i64)** %227, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i64 %228(i64 %231)
  %233 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %234 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %232, %235
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* @finish, align 4
  %239 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %239, i32* %9, align 4
  %240 = call i32 @require_action(i32 %237, i32 %238, i32 %239)
  %241 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %13, align 8
  %242 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %247 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %225
  %251 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %252 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 4
  store i64 %253, i64* %255, align 8
  %256 = load i8*, i8** @KXLD_TARGET_SYMBOLNUM, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 5
  store i8* %256, i8** %258, align 8
  br label %269

259:                                              ; preds = %225
  %260 = load %struct.relocation_info*, %struct.relocation_info** %12, align 8
  %261 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 4
  store i64 %263, i64* %265, align 8
  %266 = load i8*, i8** @KXLD_TARGET_VALUE, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 5
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %259, %250
  br label %270

270:                                              ; preds = %269, %196
  br label %291

271:                                              ; preds = %161
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  store i64 0, i64* %273, align 8
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load i64 (i64)*, i64 (i64)** %275, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = call i64 %276(i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %271
  %283 = load i8*, i8** @KXLD_TARGET_GOT, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 5
  store i8* %283, i8** %285, align 8
  br label %290

286:                                              ; preds = %271
  %287 = load i8*, i8** @KXLD_TARGET_NONE, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %286, %282
  br label %291

291:                                              ; preds = %290, %270
  br label %292

292:                                              ; preds = %291, %71
  %293 = load i64, i64* %14, align 8
  %294 = add nsw i64 %293, 1
  store i64 %294, i64* %14, align 8
  br label %39

295:                                              ; preds = %39
  br label %296

296:                                              ; preds = %295, %25
  %297 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %296, %23
  %299 = load i32, i32* %9, align 4
  ret i32 %299
}

declare dso_local i32 @check(%struct.relocation_info*) #1

declare dso_local i64 @count_relocatable_relocs(%struct.TYPE_6__*, %struct.relocation_info*, i64) #1

declare dso_local i32 @kxld_array_init(%struct.relocation_info*, i32, i64) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @kxld_array_get_item(%struct.relocation_info*, i32) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
