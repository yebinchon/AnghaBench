; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_roar.c_ra_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_roar.c_ra_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @ra_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ra_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %56

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %24, %25
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @roar_vs_write(i32 %29, i8* %32, i64 %33, i32* %8)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %4, align 8
  br label %56

44:                                               ; preds = %37
  %45 = load i64, i64* %11, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 -1, i64* %4, align 8
  br label %56

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %19

54:                                               ; preds = %19
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %47, %42, %17
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @roar_vs_write(i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
