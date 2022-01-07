; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbspace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbspace(%struct.sockbuf* %0) #0 {
  %2 = alloca %struct.sockbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %6 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %9 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = trunc i64 %11 to i32
  %13 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %14 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %17 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @imin(i32 %12, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %23 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %28 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @imin(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @imin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
