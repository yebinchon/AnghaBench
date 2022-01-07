; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hmac.c_av_hmac_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hmac.c_av_hmac_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i32 }

@av_md5_init = common dso_local global i32 0, align 4
@av_md5_update = common dso_local global i32 0, align 4
@av_md5_final = common dso_local global i32 0, align 4
@sha160_init = common dso_local global i32 0, align 4
@av_sha_update = common dso_local global i32 0, align 4
@av_sha_final = common dso_local global i32 0, align 4
@sha224_init = common dso_local global i32 0, align 4
@sha256_init = common dso_local global i32 0, align 4
@sha384_init = common dso_local global i32 0, align 4
@av_sha512_update = common dso_local global i32 0, align 4
@av_sha512_final = common dso_local global i32 0, align 4
@sha512_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @av_hmac_alloc(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.TYPE_5__* @av_mallocz(i32 40)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %150

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %137 [
    i32 133, label %11
    i32 132, label %32
    i32 131, label %53
    i32 130, label %74
    i32 129, label %95
    i32 128, label %116
  ]

11:                                               ; preds = %9
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 64, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 16, i32* %15, align 4
  %16 = load i32, i32* @av_md5_init, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @av_md5_update, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @av_md5_final, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = call i8* (...) @av_md5_alloc()
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  br label %140

32:                                               ; preds = %9
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 64, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 20, i32* %36, align 4
  %37 = load i32, i32* @sha160_init, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @av_sha_update, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @av_sha_final, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = call i8* (...) @av_sha_alloc()
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %140

53:                                               ; preds = %9
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 64, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 28, i32* %57, align 4
  %58 = load i32, i32* @sha224_init, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @av_sha_update, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @av_sha_final, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = call i8* (...) @av_sha_alloc()
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %140

74:                                               ; preds = %9
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 64, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 32, i32* %78, align 4
  %79 = load i32, i32* @sha256_init, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @av_sha_update, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @av_sha_final, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = call i8* (...) @av_sha_alloc()
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %140

95:                                               ; preds = %9
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 128, i32* %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 48, i32* %99, align 4
  %100 = load i32, i32* @sha384_init, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @av_sha512_update, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @av_sha512_final, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = call i8* (...) @av_sha512_alloc()
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %140

116:                                              ; preds = %9
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 128, i32* %118, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 64, i32* %120, align 4
  %121 = load i32, i32* @sha512_init, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @av_sha512_update, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @av_sha512_final, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = call i8* (...) @av_sha512_alloc()
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %140

137:                                              ; preds = %9
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = call i32 @av_free(%struct.TYPE_5__* %138)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %150

140:                                              ; preds = %116, %95, %74, %53, %32, %11
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = call i32 @av_free(%struct.TYPE_5__* %146)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %150

148:                                              ; preds = %140
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %2, align 8
  br label %150

150:                                              ; preds = %148, %145, %137, %8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %151
}

declare dso_local %struct.TYPE_5__* @av_mallocz(i32) #1

declare dso_local i8* @av_md5_alloc(...) #1

declare dso_local i8* @av_sha_alloc(...) #1

declare dso_local i8* @av_sha512_alloc(...) #1

declare dso_local i32 @av_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
