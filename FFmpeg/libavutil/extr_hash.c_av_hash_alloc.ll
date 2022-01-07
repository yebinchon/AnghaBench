; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hash.c_av_hash_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@NUM_HASHES = common dso_local global i32 0, align 4
@hashdesc = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CRC_32_IEEE_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_hash_alloc(%struct.TYPE_6__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NUM_HASHES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hashdesc, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @av_strcasecmp(i8* %14, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %28

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %9

28:                                               ; preds = %23, %9
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NUM_HASHES, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %28
  %36 = call %struct.TYPE_6__* @av_mallocz(i32 12)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %73 [
    i32 140, label %47
    i32 139, label %51
    i32 138, label %55
    i32 137, label %55
    i32 136, label %55
    i32 135, label %55
    i32 134, label %59
    i32 133, label %59
    i32 132, label %59
    i32 129, label %63
    i32 128, label %63
    i32 131, label %63
    i32 130, label %63
    i32 141, label %67
    i32 142, label %72
  ]

47:                                               ; preds = %42
  %48 = call i32 (...) @av_md5_alloc()
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %73

51:                                               ; preds = %42
  %52 = call i32 (...) @av_murmur3_alloc()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %73

55:                                               ; preds = %42, %42, %42, %42
  %56 = call i32 (...) @av_ripemd_alloc()
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %73

59:                                               ; preds = %42, %42, %42
  %60 = call i32 (...) @av_sha_alloc()
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %73

63:                                               ; preds = %42, %42, %42, %42
  %64 = call i32 (...) @av_sha512_alloc()
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %73

67:                                               ; preds = %42
  %68 = load i32, i32* @AV_CRC_32_IEEE_LE, align 4
  %69 = call i32 @av_crc_get_table(i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %73

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %42, %72, %67, %63, %59, %55, %51, %47
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 142
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 141
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = call i32 @av_free(%struct.TYPE_6__* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %79, %76, %73
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %84, %39, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @av_strcasecmp(i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_6__* @av_mallocz(i32) #1

declare dso_local i32 @av_md5_alloc(...) #1

declare dso_local i32 @av_murmur3_alloc(...) #1

declare dso_local i32 @av_ripemd_alloc(...) #1

declare dso_local i32 @av_sha_alloc(...) #1

declare dso_local i32 @av_sha512_alloc(...) #1

declare dso_local i32 @av_crc_get_table(i32) #1

declare dso_local i32 @av_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
