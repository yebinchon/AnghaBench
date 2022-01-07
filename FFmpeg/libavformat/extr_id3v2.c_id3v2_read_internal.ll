; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_id3v2_read_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_id3v2_read_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID3v2_HEADER_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ff_id3v2_34_metadata_conv = common dso_local global i32 0, align 4
@id3v2_2_metadata_conv = common dso_local global i32 0, align 4
@ff_id3v2_4_metadata_conv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32*, i8*, i32**, i32)* @id3v2_read_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @id3v2_read_internal(i32* %0, i32** %1, i32* %2, i8* %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %20, align 4
  br label %127

32:                                               ; preds = %27, %6
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @avio_tell(i32* %33)
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %112, %32
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @avio_tell(i32* %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %18, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @avio_seek(i32* %49, i32 %50, i32 %51)
  br label %115

53:                                               ; preds = %40, %35
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %56 = call i32 @ffio_ensure_seekback(i32* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %62 = call i32 @avio_read(i32* %60, i32* %24, i32 %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @ID3v2_HEADER_SIZE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @SEEK_SET, align 4
  %71 = call i32 @avio_seek(i32* %68, i32 %69, i32 %70)
  br label %115

72:                                               ; preds = %63
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @ff_id3v2_match(i32* %24, i8* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = getelementptr inbounds i32, i32* %24, i64 6
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 127
  %81 = shl i32 %80, 21
  %82 = getelementptr inbounds i32, i32* %24, i64 7
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 127
  %85 = shl i32 %84, 14
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds i32, i32* %24, i64 8
  %88 = load i32, i32* %87, align 16
  %89 = and i32 %88, 127
  %90 = shl i32 %89, 7
  %91 = or i32 %86, %90
  %92 = getelementptr inbounds i32, i32* %24, i64 9
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 127
  %95 = or i32 %91, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32**, i32*** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds i32, i32* %24, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds i32, i32* %24, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32**, i32*** %11, align 8
  %105 = call i32 @id3v2_parse(i32* %96, i32** %97, i32* %98, i32 %99, i32 %101, i32 %103, i32** %104)
  br label %111

106:                                              ; preds = %72
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @SEEK_SET, align 4
  %110 = call i32 @avio_seek(i32* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %77
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %35, label %115

115:                                              ; preds = %112, %67, %48
  %116 = load i32**, i32*** %8, align 8
  %117 = load i32, i32* @ff_id3v2_34_metadata_conv, align 4
  %118 = call i32 @ff_metadata_conv(i32** %116, i32* null, i32 %117)
  %119 = load i32**, i32*** %8, align 8
  %120 = load i32, i32* @id3v2_2_metadata_conv, align 4
  %121 = call i32 @ff_metadata_conv(i32** %119, i32* null, i32 %120)
  %122 = load i32**, i32*** %8, align 8
  %123 = load i32, i32* @ff_id3v2_4_metadata_conv, align 4
  %124 = call i32 @ff_metadata_conv(i32** %122, i32* null, i32 %123)
  %125 = load i32**, i32*** %8, align 8
  %126 = call i32 @merge_date(i32** %125)
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %115, %31
  %128 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %20, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @ffio_ensure_seekback(i32*, i32) #2

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @ff_id3v2_match(i32*, i8*) #2

declare dso_local i32 @id3v2_parse(i32*, i32**, i32*, i32, i32, i32, i32**) #2

declare dso_local i32 @ff_metadata_conv(i32**, i32*, i32) #2

declare dso_local i32 @merge_date(i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
