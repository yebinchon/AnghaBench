; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureCI.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureCI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i64, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@GX_DISABLE = common dso_local global i32 0, align 4
@TPL_FILE_TYPE_DISC = common dso_local global i64 0, align 8
@PPC_CACHE_ALIGNMENT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TPL_GetTextureCI(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* @GX_DISABLE, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %243

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %243

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %243

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %32
  store i32 -1, i32* %6, align 4
  br label %243

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %15, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %243

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %16, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %243

60:                                               ; preds = %50
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %17, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %243

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TPL_GetTextureSize(i32 %73, i32 %76, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TPL_FILE_TYPE_DISC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %155

86:                                               ; preds = %70
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %14, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 11
  %93 = load i8*, i8** %92, align 8
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @PPC_CACHE_ALIGNMENT, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i8* @memalign(i32 %95, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 11
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 11
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %86
  store i32 -1, i32* %6, align 4
  br label %243

105:                                              ; preds = %86
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i32 @fseek(i32* %106, i32 %107, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 11
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @fread(i8* %112, i32 1, i32 %113, i32* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* @PPC_CACHE_ALIGNMENT, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i8* @memalign(i32 %120, i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %105
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 11
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  store i32 -1, i32* %6, align 4
  br label %243

139:                                              ; preds = %105
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @SEEK_SET, align 4
  %143 = call i32 @fseek(i32* %140, i32 %141, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @fread(i8* %146, i32 1, i32 %152, i32* %153)
  br label %155

155:                                              ; preds = %139, %70
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 1, i32* %18, align 4
  br label %161

161:                                              ; preds = %160, %155
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load float, float* %163, align 8
  %165 = fcmp ogt float %164, 0.000000e+00
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* @GX_ENABLE, align 4
  store i32 %167, i32* %19, align 4
  br label %168

168:                                              ; preds = %166, %161
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 11
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @DCFlushRange(i8* %171, i32 %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call i32 @DCFlushRange(i8* %176, i32 %182)
  %184 = load i32*, i32** %10, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @GX_InitTlutObj(i32* %184, i8* %187, i32 %190, i32 %193)
  %195 = load i32*, i32** %9, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 11
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @GX_InitTexObjCI(i32* %195, i8* %198, i32 %201, i32 %204, i32 %207, i32 %210, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %242

219:                                              ; preds = %168
  %220 = load i32*, i32** %9, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load float, float* %234, align 8
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %19, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @GX_InitTexObjLOD(i32* %220, i32 %223, i32 %226, i32 %229, i64 %232, float %235, i32 %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %219, %168
  store i32 0, i32* %6, align 4
  br label %243

243:                                              ; preds = %242, %134, %104, %69, %59, %49, %41, %31, %27, %23
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @TPL_GetTextureSize(i32, i32, i32) #1

declare dso_local i8* @memalign(i32, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @DCFlushRange(i8*, i32) #1

declare dso_local i32 @GX_InitTlutObj(i32*, i8*, i32, i32) #1

declare dso_local i32 @GX_InitTexObjCI(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjLOD(i32*, i32, i32, i32, i64, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
