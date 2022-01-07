; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_loadIntoBucketFromDisk.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_loadIntoBucketFromDisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_26__, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_31__*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"id: %d  count: %d\0A\00", align 1
@TSQL_SO_ASC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_29__*, i64, i64, %struct.TYPE_28__*)* @loadIntoBucketFromDisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @loadIntoBucketFromDisk(%struct.TYPE_29__* %0, i64 %1, i64 %2, %struct.TYPE_28__* %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %8, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %24, i64 %25
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %9, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 16
  %37 = trunc i64 %36 to i32
  %38 = call i64 @calloc(i32 1, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %10, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %54 = call i32 @tExtMemBufferIsAllDataInMem(%struct.TYPE_22__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %162, label %56

56:                                               ; preds = %4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call %struct.TYPE_22__* @releaseBucketsExceptFor(%struct.TYPE_29__* %57, i64 %58, i64 %59)
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %9, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @calloc(i32 1, i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %71, %struct.TYPE_32__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %146, %56
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %149

80:                                               ; preds = %72
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i64 %86
  store %struct.TYPE_30__* %87, %struct.TYPE_30__** %14, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i64 @fseek(i32 %90, i32 %97, i32 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @UNUSED(i64 %100)
  store i64 0, i64* %16, align 8
  br label %102

102:                                              ; preds = %142, %80
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %102
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @fread(%struct.TYPE_32__* %109, i32 %112, i32 1, i32 %115)
  store i64 %116, i64* %15, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @tColModelAppend(%struct.TYPE_23__* %125, %struct.TYPE_32__* %126, i32 %129, i32 0, i64 %132, i64 %135)
  %137 = load i64, i64* %16, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %137, i64 %140)
  br label %142

142:                                              ; preds = %108
  %143 = load i64, i64* %16, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %16, align 8
  br label %102

145:                                              ; preds = %102
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %72

149:                                              ; preds = %72
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %151 = call i32 @tfree(%struct.TYPE_32__* %150)
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %154, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  br label %162

162:                                              ; preds = %149, %4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %164, align 8
  store %struct.TYPE_31__* %165, %struct.TYPE_31__** %17, align 8
  br label %166

166:                                              ; preds = %169, %162
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %168 = icmp ne %struct.TYPE_31__* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @tColModelAppend(%struct.TYPE_23__* %172, %struct.TYPE_32__* %173, i32 %177, i32 0, i64 %181, i64 %185)
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %188, align 8
  store %struct.TYPE_31__* %189, %struct.TYPE_31__** %17, align 8
  br label %166

190:                                              ; preds = %166
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %197, 1
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @TSQL_SO_ASC, align 4
  %203 = call i32 @tColDataQSort(%struct.TYPE_28__* %191, i64 %194, i32 0, i64 %198, i32 %201, i32 %202)
  %204 = load i64, i64* %11, align 8
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  store i64 %204, i64* %208, align 8
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  ret %struct.TYPE_32__* %209
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @tExtMemBufferIsAllDataInMem(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @releaseBucketsExceptFor(%struct.TYPE_29__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @UNUSED(i64) #1

declare dso_local i64 @fread(%struct.TYPE_32__*, i32, i32, i32) #1

declare dso_local i32 @tColModelAppend(%struct.TYPE_23__*, %struct.TYPE_32__*, i32, i32, i64, i64) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @tfree(%struct.TYPE_32__*) #1

declare dso_local i32 @tColDataQSort(%struct.TYPE_28__*, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
