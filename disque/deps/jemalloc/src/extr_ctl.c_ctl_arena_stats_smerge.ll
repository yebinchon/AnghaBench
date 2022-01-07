; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_arena_stats_smerge.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_arena_stats_smerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@NBINS = common dso_local global i32 0, align 4
@config_tcache = common dso_local global i64 0, align 8
@nlclasses = common dso_local global i32 0, align 4
@nhclasses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*)* @ctl_arena_stats_smerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_arena_stats_smerge(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, %8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %23
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %32
  store i64 %37, i64* %35, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %41
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 9
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %50
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %59
  store i64 %64, i64* %62, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %141
  store i64 %146, i64* %144, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %150
  store i64 %155, i64* %153, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %159
  store i64 %164, i64* %162, align 8
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %327, %2
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @NBINS, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %330

169:                                              ; preds = %165
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 8
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %177
  store i64 %186, i64* %184, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, %194
  store i64 %203, i64* %201, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %211
  store i64 %220, i64* %218, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, %228
  store i64 %237, i64* %235, align 8
  %238 = load i64, i64* @config_tcache, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %275

240:                                              ; preds = %169
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, %248
  store i64 %257, i64* %255, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %265
  store i64 %274, i64* %272, align 8
  br label %275

275:                                              ; preds = %240, %169
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = add nsw i64 %291, %283
  store i64 %292, i64* %290, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = load i32, i32* %5, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %300
  store i64 %309, i64* %307, align 8
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, %317
  store i64 %326, i64* %324, align 8
  br label %327

327:                                              ; preds = %275
  %328 = load i32, i32* %5, align 4
  %329 = add i32 %328, 1
  store i32 %329, i32* %5, align 4
  br label %165

330:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %331

331:                                              ; preds = %404, %330
  %332 = load i32, i32* %5, align 4
  %333 = load i32, i32* @nlclasses, align 4
  %334 = icmp ult i32 %332, %333
  br i1 %334, label %335, label %407

335:                                              ; preds = %331
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %5, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %351, %343
  store i64 %352, i64* %350, align 8
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = load i32, i32* %5, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = load i32, i32* %5, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, %360
  store i64 %369, i64* %367, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %371, align 8
  %373 = load i32, i32* %5, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = load i32, i32* %5, align 4
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = add nsw i64 %385, %377
  store i64 %386, i64* %384, align 8
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %388, align 8
  %390 = load i32, i32* %5, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, %394
  store i64 %403, i64* %401, align 8
  br label %404

404:                                              ; preds = %335
  %405 = load i32, i32* %5, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %5, align 4
  br label %331

407:                                              ; preds = %331
  store i32 0, i32* %5, align 4
  br label %408

408:                                              ; preds = %464, %407
  %409 = load i32, i32* %5, align 4
  %410 = load i32, i32* @nhclasses, align 4
  %411 = icmp ult i32 %409, %410
  br i1 %411, label %412, label %467

412:                                              ; preds = %408
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = load i32, i32* %5, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %422, align 8
  %424 = load i32, i32* %5, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %428, %420
  store i64 %429, i64* %427, align 8
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %431, align 8
  %433 = load i32, i32* %5, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %439, align 8
  %441 = load i32, i32* %5, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %445, %437
  store i64 %446, i64* %444, align 8
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %448, align 8
  %450 = load i32, i32* %5, align 4
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %456, align 8
  %458 = load i32, i32* %5, align 4
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = add nsw i64 %462, %454
  store i64 %463, i64* %461, align 8
  br label %464

464:                                              ; preds = %412
  %465 = load i32, i32* %5, align 4
  %466 = add i32 %465, 1
  store i32 %466, i32* %5, align 4
  br label %408

467:                                              ; preds = %408
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
