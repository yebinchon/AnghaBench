; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___timeouthandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___timeouthandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i64, i32)*, i64 }

@CARD_ERROR_READY = common dso_local global i32 0, align 4
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@CARD_ERROR_IOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @__timeouthandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__timeouthandler(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i64, i32)*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %9, i32* %6, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @EXI_CHANNEL_2, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %10

27:                                               ; preds = %23, %10
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @EXI_CHANNEL_0, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @EXI_CHANNEL_2, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %58

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @EXI_RegisterEXICallback(i64 %42, i32* null)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32 (i64, i32)*, i32 (i64, i32)** %45, align 8
  store i32 (i64, i32)* %46, i32 (i64, i32)** %7, align 8
  %47 = load i32 (i64, i32)*, i32 (i64, i32)** %7, align 8
  %48 = icmp ne i32 (i64, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 (i64, i32)* null, i32 (i64, i32)** %51, align 8
  %52 = load i32, i32* @CARD_ERROR_IOERROR, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32 (i64, i32)*, i32 (i64, i32)** %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %53(i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %35, %57, %36
  ret void
}

declare dso_local i32 @EXI_RegisterEXICallback(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
