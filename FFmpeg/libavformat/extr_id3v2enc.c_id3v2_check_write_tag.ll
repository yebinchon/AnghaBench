; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_id3v2_check_write_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_id3v2_check_write_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*, [4 x i8]*, i32)* @id3v2_check_write_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id3v2_check_write_tag(i32* %0, i32* %1, %struct.TYPE_3__* %2, [4 x i8]* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca [4 x i8]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store [4 x i8]* %3, [4 x i8]** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 84
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %5
  store i32 -1, i32* %6, align 4
  br label %64

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @AV_RB32(i8* %31)
  store i64 %32, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %60, %28
  %34 = load [4 x i8]*, [4 x i8]** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i64 %36
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load i64, i64* %12, align 8
  %43 = load [4 x i8]*, [4 x i8]** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i64 %45
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %46, i64 0, i64 0
  %48 = call i64 @AV_RB32(i8* %47)
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @id3v2_put_ttag(i32* %51, i32* %52, i32 %55, i32* null, i64 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %33

63:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %50, %27
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @AV_RB32(i8*) #1

declare dso_local i32 @id3v2_put_ttag(i32*, i32*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
