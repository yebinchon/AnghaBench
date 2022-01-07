; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_mp3_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_mp3_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@shared_ctl = common dso_local global %struct.TYPE_4__* null, align 8
@mp3_data = common dso_local global i8* null, align 8
@shared_data = common dso_local global %struct.TYPE_3__* null, align 8
@ERR_MP3_MAINDATA_UNDERFLOW = common dso_local global i32 0, align 4
@ERR_MP3_INDATA_UNDERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mp3_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp3_decode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %1, align 4
  %10 = load i8*, i8** @mp3_data, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %107

22:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %85, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %88

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @mp3_find_sync_word(i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %99

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shared_data, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shared_data, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MP3Decode(i32 %43, i8** %2, i32* %3, i32 %51, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %33
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ERR_MP3_MAINDATA_UNDERFLOW, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %85

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ERR_MP3_INDATA_UNDERFLOW, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %99

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, -6
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, -12
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %68, %65
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %76, %33
  br label %88

85:                                               ; preds = %71, %59
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %23

88:                                               ; preds = %84, %23
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %1, align 4
  %92 = load i8*, i8** %2, align 8
  %93 = load i8*, i8** @mp3_data, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @set_if_not_changed(i32* %90, i32 %91, i32 %97)
  br label %107

99:                                               ; preds = %64, %32
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %1, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @set_if_not_changed(i32* %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %99, %88, %21
  ret void
}

declare dso_local i32 @mp3_find_sync_word(i8*, i32) #1

declare dso_local i32 @MP3Decode(i32, i8**, i32*, i32, i32) #1

declare dso_local i32 @set_if_not_changed(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
