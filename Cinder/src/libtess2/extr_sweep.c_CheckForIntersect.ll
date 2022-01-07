; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForIntersect.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_CheckForIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { i32, i32*, i32, i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i64, i64, i64 }
%struct.TYPE_54__ = type { i32, %struct.TYPE_53__*, i32 }
%struct.TYPE_53__ = type { %struct.TYPE_50__*, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_50__* }
%struct.TYPE_51__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INV_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_52__*, %struct.TYPE_54__*)* @CheckForIntersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForIntersect(%struct.TYPE_52__* %0, %struct.TYPE_54__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_52__*, align 8
  %5 = alloca %struct.TYPE_54__*, align 8
  %6 = alloca %struct.TYPE_54__*, align 8
  %7 = alloca %struct.TYPE_53__*, align 8
  %8 = alloca %struct.TYPE_53__*, align 8
  %9 = alloca %struct.TYPE_50__*, align 8
  %10 = alloca %struct.TYPE_50__*, align 8
  %11 = alloca %struct.TYPE_50__*, align 8
  %12 = alloca %struct.TYPE_50__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_50__, align 8
  %16 = alloca %struct.TYPE_50__*, align 8
  %17 = alloca %struct.TYPE_53__*, align 8
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %4, align 8
  store %struct.TYPE_54__* %1, %struct.TYPE_54__** %5, align 8
  %18 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %19 = call %struct.TYPE_54__* @RegionBelow(%struct.TYPE_54__* %18)
  store %struct.TYPE_54__* %19, %struct.TYPE_54__** %6, align 8
  %20 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_53__*, %struct.TYPE_53__** %21, align 8
  store %struct.TYPE_53__* %22, %struct.TYPE_53__** %7, align 8
  %23 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_53__*, %struct.TYPE_53__** %24, align 8
  store %struct.TYPE_53__* %25, %struct.TYPE_53__** %8, align 8
  %26 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  store %struct.TYPE_50__* %28, %struct.TYPE_50__** %9, align 8
  %29 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_50__*, %struct.TYPE_50__** %30, align 8
  store %struct.TYPE_50__* %31, %struct.TYPE_50__** %10, align 8
  %32 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_50__*, %struct.TYPE_50__** %33, align 8
  store %struct.TYPE_50__* %34, %struct.TYPE_50__** %11, align 8
  %35 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %36, align 8
  store %struct.TYPE_50__* %37, %struct.TYPE_50__** %12, align 8
  %38 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %39 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %40 = call i64 @VertEq(%struct.TYPE_50__* %38, %struct.TYPE_50__* %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %46 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_50__*, %struct.TYPE_50__** %47, align 8
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %50 = call i64 @EdgeSign(%struct.TYPE_50__* %45, %struct.TYPE_50__* %48, %struct.TYPE_50__* %49)
  %51 = icmp sle i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %55 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_50__*, %struct.TYPE_50__** %56, align 8
  %58 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %59 = call i64 @EdgeSign(%struct.TYPE_50__* %54, %struct.TYPE_50__* %57, %struct.TYPE_50__* %58)
  %60 = icmp sge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %64 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_50__*, %struct.TYPE_50__** %65, align 8
  %67 = icmp ne %struct.TYPE_50__* %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %2
  %69 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %70 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_50__*, %struct.TYPE_50__** %71, align 8
  %73 = icmp ne %struct.TYPE_50__* %69, %72
  br label %74

74:                                               ; preds = %68, %2
  %75 = phi i1 [ false, %2 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i1 [ false, %74 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %93 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %94 = icmp eq %struct.TYPE_50__* %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %3, align 4
  br label %612

97:                                               ; preds = %88
  %98 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @MIN(i64 %100, i64 %103)
  store i64 %104, i64* %13, align 8
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @MAX(i64 %107, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %612

117:                                              ; preds = %97
  %118 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %119 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %120 = call i64 @VertLeq(%struct.TYPE_50__* %118, %struct.TYPE_50__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %124 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %125 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %126 = call i64 @EdgeSign(%struct.TYPE_50__* %123, %struct.TYPE_50__* %124, %struct.TYPE_50__* %125)
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %3, align 4
  br label %612

130:                                              ; preds = %122
  br label %140

131:                                              ; preds = %117
  %132 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %133 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %134 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %135 = call i64 @EdgeSign(%struct.TYPE_50__* %132, %struct.TYPE_50__* %133, %struct.TYPE_50__* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %3, align 4
  br label %612

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %130
  %141 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %142 = call i32 @DebugEvent(%struct.TYPE_52__* %141)
  %143 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %144 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %145 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %146 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %147 = call i32 @tesedgeIntersect(%struct.TYPE_50__* %143, %struct.TYPE_50__* %144, %struct.TYPE_50__* %145, %struct.TYPE_50__* %146, %struct.TYPE_50__* %15)
  %148 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @MIN(i64 %150, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sle i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @MAX(i64 %164, i64 %167)
  %169 = icmp sle i64 %161, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @MIN(i64 %174, i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sle i64 %178, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @MAX(i64 %188, i64 %191)
  %193 = icmp sle i64 %185, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_50__*, %struct.TYPE_50__** %197, align 8
  %199 = call i64 @VertLeq(%struct.TYPE_50__* %15, %struct.TYPE_50__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %140
  %202 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_50__*, %struct.TYPE_50__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 1
  store i64 %206, i64* %207, align 8
  %208 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_50__*, %struct.TYPE_50__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 0
  store i64 %212, i64* %213, align 8
  br label %214

214:                                              ; preds = %201, %140
  %215 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %216 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %217 = call i64 @VertLeq(%struct.TYPE_50__* %215, %struct.TYPE_50__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  br label %223

221:                                              ; preds = %214
  %222 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi %struct.TYPE_50__* [ %220, %219 ], [ %222, %221 ]
  store %struct.TYPE_50__* %224, %struct.TYPE_50__** %16, align 8
  %225 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %226 = call i64 @VertLeq(%struct.TYPE_50__* %225, %struct.TYPE_50__* %15)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 1
  store i64 %231, i64* %232, align 8
  %233 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 0
  store i64 %235, i64* %236, align 8
  br label %237

237:                                              ; preds = %228, %223
  %238 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %239 = call i64 @VertEq(%struct.TYPE_50__* %15, %struct.TYPE_50__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %243 = call i64 @VertEq(%struct.TYPE_50__* %15, %struct.TYPE_50__* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241, %237
  %246 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %247 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %248 = call i32 @CheckForRightSplice(%struct.TYPE_52__* %246, %struct.TYPE_54__* %247)
  %249 = load i32, i32* @FALSE, align 4
  store i32 %249, i32* %3, align 4
  br label %612

250:                                              ; preds = %241
  %251 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %252 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_50__*, %struct.TYPE_50__** %253, align 8
  %255 = call i64 @VertEq(%struct.TYPE_50__* %251, %struct.TYPE_50__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %250
  %258 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %259 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_50__*, %struct.TYPE_50__** %260, align 8
  %262 = call i64 @EdgeSign(%struct.TYPE_50__* %258, %struct.TYPE_50__* %261, %struct.TYPE_50__* %15)
  %263 = icmp sge i64 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %266 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %266, i32 0, i32 4
  %268 = load %struct.TYPE_50__*, %struct.TYPE_50__** %267, align 8
  %269 = call i64 @VertEq(%struct.TYPE_50__* %265, %struct.TYPE_50__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %504, label %271

271:                                              ; preds = %264
  %272 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %273 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_50__*, %struct.TYPE_50__** %274, align 8
  %276 = call i64 @EdgeSign(%struct.TYPE_50__* %272, %struct.TYPE_50__* %275, %struct.TYPE_50__* %15)
  %277 = icmp sle i64 %276, 0
  br i1 %277, label %278, label %504

278:                                              ; preds = %271, %257
  %279 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %280 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_50__*, %struct.TYPE_50__** %281, align 8
  %283 = icmp eq %struct.TYPE_50__* %279, %282
  br i1 %283, label %284, label %344

284:                                              ; preds = %278
  %285 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_53__*, %struct.TYPE_53__** %289, align 8
  %291 = call i32* @tessMeshSplitEdge(i32 %287, %struct.TYPE_53__* %290)
  %292 = icmp eq i32* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %284
  %294 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @longjmp(i32 %296, i32 1)
  br label %298

298:                                              ; preds = %293, %284
  %299 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_53__*, %struct.TYPE_53__** %303, align 8
  %305 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %306 = call i32 @tessMeshSplice(i32 %301, %struct.TYPE_53__* %304, %struct.TYPE_53__* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %298
  %309 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @longjmp(i32 %311, i32 1)
  br label %313

313:                                              ; preds = %308, %298
  %314 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %315 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %316 = call %struct.TYPE_54__* @TopLeftRegion(%struct.TYPE_52__* %314, %struct.TYPE_54__* %315)
  store %struct.TYPE_54__* %316, %struct.TYPE_54__** %5, align 8
  %317 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %318 = icmp eq %struct.TYPE_54__* %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @longjmp(i32 %322, i32 1)
  br label %324

324:                                              ; preds = %319, %313
  %325 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %326 = call %struct.TYPE_54__* @RegionBelow(%struct.TYPE_54__* %325)
  %327 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_53__*, %struct.TYPE_53__** %327, align 8
  store %struct.TYPE_53__* %328, %struct.TYPE_53__** %7, align 8
  %329 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %330 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %331 = call %struct.TYPE_54__* @RegionBelow(%struct.TYPE_54__* %330)
  %332 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %333 = call %struct.TYPE_53__* @FinishLeftRegions(%struct.TYPE_52__* %329, %struct.TYPE_54__* %331, %struct.TYPE_54__* %332)
  %334 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %335 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %336 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_53__*, %struct.TYPE_53__** %337, align 8
  %339 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %340 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %341 = load i32, i32* @TRUE, align 4
  %342 = call i32 @AddRightEdges(%struct.TYPE_52__* %334, %struct.TYPE_54__* %335, %struct.TYPE_53__* %338, %struct.TYPE_53__* %339, %struct.TYPE_53__* %340, i32 %341)
  %343 = load i32, i32* @TRUE, align 4
  store i32 %343, i32* %3, align 4
  br label %612

344:                                              ; preds = %278
  %345 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %346 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %346, i32 0, i32 4
  %348 = load %struct.TYPE_50__*, %struct.TYPE_50__** %347, align 8
  %349 = icmp eq %struct.TYPE_50__* %345, %348
  br i1 %349, label %350, label %411

350:                                              ; preds = %344
  %351 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_53__*, %struct.TYPE_53__** %355, align 8
  %357 = call i32* @tessMeshSplitEdge(i32 %353, %struct.TYPE_53__* %356)
  %358 = icmp eq i32* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %350
  %360 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @longjmp(i32 %362, i32 1)
  br label %364

364:                                              ; preds = %359, %350
  %365 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_53__*, %struct.TYPE_53__** %369, align 8
  %371 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_53__*, %struct.TYPE_53__** %372, align 8
  %374 = call i32 @tessMeshSplice(i32 %367, %struct.TYPE_53__* %370, %struct.TYPE_53__* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %364
  %377 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @longjmp(i32 %379, i32 1)
  br label %381

381:                                              ; preds = %376, %364
  %382 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  store %struct.TYPE_54__* %382, %struct.TYPE_54__** %6, align 8
  %383 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %384 = call %struct.TYPE_54__* @TopRightRegion(%struct.TYPE_54__* %383)
  store %struct.TYPE_54__* %384, %struct.TYPE_54__** %5, align 8
  %385 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %386 = call %struct.TYPE_54__* @RegionBelow(%struct.TYPE_54__* %385)
  %387 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_53__*, %struct.TYPE_53__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_53__*, %struct.TYPE_53__** %389, align 8
  store %struct.TYPE_53__* %390, %struct.TYPE_53__** %17, align 8
  %391 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_53__*, %struct.TYPE_53__** %392, align 8
  %394 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %394, i32 0, i32 1
  store %struct.TYPE_53__* %393, %struct.TYPE_53__** %395, align 8
  %396 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %397 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %398 = call %struct.TYPE_53__* @FinishLeftRegions(%struct.TYPE_52__* %396, %struct.TYPE_54__* %397, %struct.TYPE_54__* null)
  store %struct.TYPE_53__* %398, %struct.TYPE_53__** %8, align 8
  %399 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %400 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %401 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %401, i32 0, i32 4
  %403 = load %struct.TYPE_53__*, %struct.TYPE_53__** %402, align 8
  %404 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %404, i32 0, i32 3
  %406 = load %struct.TYPE_53__*, %struct.TYPE_53__** %405, align 8
  %407 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %408 = load i32, i32* @TRUE, align 4
  %409 = call i32 @AddRightEdges(%struct.TYPE_52__* %399, %struct.TYPE_54__* %400, %struct.TYPE_53__* %403, %struct.TYPE_53__* %406, %struct.TYPE_53__* %407, i32 %408)
  %410 = load i32, i32* @TRUE, align 4
  store i32 %410, i32* %3, align 4
  br label %612

411:                                              ; preds = %344
  %412 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %413 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %413, i32 0, i32 4
  %415 = load %struct.TYPE_50__*, %struct.TYPE_50__** %414, align 8
  %416 = call i64 @EdgeSign(%struct.TYPE_50__* %412, %struct.TYPE_50__* %415, %struct.TYPE_50__* %15)
  %417 = icmp sge i64 %416, 0
  br i1 %417, label %418, label %457

418:                                              ; preds = %411
  %419 = load i32, i32* @TRUE, align 4
  %420 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %423 = call %struct.TYPE_51__* @RegionAbove(%struct.TYPE_54__* %422)
  %424 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %423, i32 0, i32 0
  store i32 %419, i32* %424, align 4
  %425 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %428, i32 0, i32 2
  %430 = load %struct.TYPE_53__*, %struct.TYPE_53__** %429, align 8
  %431 = call i32* @tessMeshSplitEdge(i32 %427, %struct.TYPE_53__* %430)
  %432 = icmp eq i32* %431, null
  br i1 %432, label %433, label %438

433:                                              ; preds = %418
  %434 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @longjmp(i32 %436, i32 1)
  br label %438

438:                                              ; preds = %433, %418
  %439 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %439, i32 0, i32 4
  %441 = load %struct.TYPE_50__*, %struct.TYPE_50__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_50__*, %struct.TYPE_50__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %446, i32 0, i32 1
  store i64 %443, i64* %447, align 8
  %448 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %448, i32 0, i32 4
  %450 = load %struct.TYPE_50__*, %struct.TYPE_50__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_50__*, %struct.TYPE_50__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %455, i32 0, i32 0
  store i64 %452, i64* %456, align 8
  br label %457

457:                                              ; preds = %438, %411
  %458 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %459 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %459, i32 0, i32 4
  %461 = load %struct.TYPE_50__*, %struct.TYPE_50__** %460, align 8
  %462 = call i64 @EdgeSign(%struct.TYPE_50__* %458, %struct.TYPE_50__* %461, %struct.TYPE_50__* %15)
  %463 = icmp sle i64 %462, 0
  br i1 %463, label %464, label %502

464:                                              ; preds = %457
  %465 = load i32, i32* @TRUE, align 4
  %466 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %466, i32 0, i32 0
  store i32 %465, i32* %467, align 8
  %468 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %468, i32 0, i32 0
  store i32 %465, i32* %469, align 8
  %470 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %473, i32 0, i32 2
  %475 = load %struct.TYPE_53__*, %struct.TYPE_53__** %474, align 8
  %476 = call i32* @tessMeshSplitEdge(i32 %472, %struct.TYPE_53__* %475)
  %477 = icmp eq i32* %476, null
  br i1 %477, label %478, label %483

478:                                              ; preds = %464
  %479 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @longjmp(i32 %481, i32 1)
  br label %483

483:                                              ; preds = %478, %464
  %484 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %484, i32 0, i32 4
  %486 = load %struct.TYPE_50__*, %struct.TYPE_50__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %489, i32 0, i32 0
  %491 = load %struct.TYPE_50__*, %struct.TYPE_50__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %491, i32 0, i32 1
  store i64 %488, i64* %492, align 8
  %493 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %493, i32 0, i32 4
  %495 = load %struct.TYPE_50__*, %struct.TYPE_50__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %499 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_50__*, %struct.TYPE_50__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %500, i32 0, i32 0
  store i64 %497, i64* %501, align 8
  br label %502

502:                                              ; preds = %483, %457
  %503 = load i32, i32* @FALSE, align 4
  store i32 %503, i32* %3, align 4
  br label %612

504:                                              ; preds = %271, %264
  %505 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %508, i32 0, i32 2
  %510 = load %struct.TYPE_53__*, %struct.TYPE_53__** %509, align 8
  %511 = call i32* @tessMeshSplitEdge(i32 %507, %struct.TYPE_53__* %510)
  %512 = icmp eq i32* %511, null
  br i1 %512, label %513, label %518

513:                                              ; preds = %504
  %514 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @longjmp(i32 %516, i32 1)
  br label %518

518:                                              ; preds = %513, %504
  %519 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %523 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %522, i32 0, i32 2
  %524 = load %struct.TYPE_53__*, %struct.TYPE_53__** %523, align 8
  %525 = call i32* @tessMeshSplitEdge(i32 %521, %struct.TYPE_53__* %524)
  %526 = icmp eq i32* %525, null
  br i1 %526, label %527, label %532

527:                                              ; preds = %518
  %528 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %529 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @longjmp(i32 %530, i32 1)
  br label %532

532:                                              ; preds = %527, %518
  %533 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_53__*, %struct.TYPE_53__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_53__*, %struct.TYPE_53__** %537, align 8
  %539 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %540 = call i32 @tessMeshSplice(i32 %535, %struct.TYPE_53__* %538, %struct.TYPE_53__* %539)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %547, label %542

542:                                              ; preds = %532
  %543 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = call i32 @longjmp(i32 %545, i32 1)
  br label %547

547:                                              ; preds = %542, %532
  %548 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %550, i32 0, i32 0
  %552 = load %struct.TYPE_50__*, %struct.TYPE_50__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %552, i32 0, i32 1
  store i64 %549, i64* %553, align 8
  %554 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %15, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %556, i32 0, i32 0
  %558 = load %struct.TYPE_50__*, %struct.TYPE_50__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %558, i32 0, i32 0
  store i64 %555, i64* %559, align 8
  %560 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %560, i32 0, i32 2
  %562 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %563 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %562, i32 0, i32 1
  %564 = load i32*, i32** %563, align 8
  %565 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %565, i32 0, i32 0
  %567 = load %struct.TYPE_50__*, %struct.TYPE_50__** %566, align 8
  %568 = call i64 @pqInsert(i32* %561, i32* %564, %struct.TYPE_50__* %567)
  %569 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %569, i32 0, i32 0
  %571 = load %struct.TYPE_50__*, %struct.TYPE_50__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %571, i32 0, i32 2
  store i64 %568, i64* %572, align 8
  %573 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %573, i32 0, i32 0
  %575 = load %struct.TYPE_50__*, %struct.TYPE_50__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = load i64, i64* @INV_HANDLE, align 8
  %579 = icmp eq i64 %577, %578
  br i1 %579, label %580, label %593

580:                                              ; preds = %547
  %581 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %581, i32 0, i32 2
  %583 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %583, i32 0, i32 1
  %585 = load i32*, i32** %584, align 8
  %586 = call i32 @pqDeletePriorityQ(i32* %582, i32* %585)
  %587 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %587, i32 0, i32 1
  store i32* null, i32** %588, align 8
  %589 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @longjmp(i32 %591, i32 1)
  br label %593

593:                                              ; preds = %580, %547
  %594 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %595 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %595, i32 0, i32 0
  %597 = load %struct.TYPE_50__*, %struct.TYPE_50__** %596, align 8
  %598 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %599 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %600 = load %struct.TYPE_50__*, %struct.TYPE_50__** %10, align 8
  %601 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %602 = call i32 @GetIntersectData(%struct.TYPE_52__* %594, %struct.TYPE_50__* %597, %struct.TYPE_50__* %598, %struct.TYPE_50__* %599, %struct.TYPE_50__* %600, %struct.TYPE_50__* %601)
  %603 = load i32, i32* @TRUE, align 4
  %604 = load %struct.TYPE_54__*, %struct.TYPE_54__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %604, i32 0, i32 0
  store i32 %603, i32* %605, align 8
  %606 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %606, i32 0, i32 0
  store i32 %603, i32* %607, align 8
  %608 = load %struct.TYPE_54__*, %struct.TYPE_54__** %5, align 8
  %609 = call %struct.TYPE_51__* @RegionAbove(%struct.TYPE_54__* %608)
  %610 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %609, i32 0, i32 0
  store i32 %603, i32* %610, align 4
  %611 = load i32, i32* @FALSE, align 4
  store i32 %611, i32* %3, align 4
  br label %612

612:                                              ; preds = %593, %502, %381, %324, %245, %137, %128, %115, %95
  %613 = load i32, i32* %3, align 4
  ret i32 %613
}

declare dso_local %struct.TYPE_54__* @RegionBelow(%struct.TYPE_54__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VertEq(%struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i64 @EdgeSign(%struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @VertLeq(%struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i32 @DebugEvent(%struct.TYPE_52__*) #1

declare dso_local i32 @tesedgeIntersect(%struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i32 @CheckForRightSplice(%struct.TYPE_52__*, %struct.TYPE_54__*) #1

declare dso_local i32* @tessMeshSplitEdge(i32, %struct.TYPE_53__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @tessMeshSplice(i32, %struct.TYPE_53__*, %struct.TYPE_53__*) #1

declare dso_local %struct.TYPE_54__* @TopLeftRegion(%struct.TYPE_52__*, %struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_53__* @FinishLeftRegions(%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_54__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_52__*, %struct.TYPE_54__*, %struct.TYPE_53__*, %struct.TYPE_53__*, %struct.TYPE_53__*, i32) #1

declare dso_local %struct.TYPE_54__* @TopRightRegion(%struct.TYPE_54__*) #1

declare dso_local %struct.TYPE_51__* @RegionAbove(%struct.TYPE_54__*) #1

declare dso_local i64 @pqInsert(i32*, i32*, %struct.TYPE_50__*) #1

declare dso_local i32 @pqDeletePriorityQ(i32*, i32*) #1

declare dso_local i32 @GetIntersectData(%struct.TYPE_52__*, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
