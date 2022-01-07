; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_environ.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @stripes_environ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripes_environ(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %33 [
    i32 129, label %12
    i32 130, label %19
    i32 128, label %26
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %35

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %35

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = call i32 @stripes_refresh_horizontal_list(%struct.TYPE_3__* %31)
  br label %34

33:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

34:                                               ; preds = %30, %23, %16
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33, %29, %22, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @stripes_refresh_horizontal_list(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
