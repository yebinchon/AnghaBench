; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_copypartial.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netbuf_copypartial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { %struct.pbuf* }
%struct.pbuf = type { i64, i64, %struct.pbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netbuf*, i8*, i64, i64)* @netbuf_copypartial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netbuf_copypartial(%struct.netbuf* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.netbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.netbuf* %0, %struct.netbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %13 = icmp eq %struct.netbuf* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  br label %81

18:                                               ; preds = %14
  %19 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %20 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 0
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8
  store %struct.pbuf* %21, %struct.pbuf** %9, align 8
  br label %22

22:                                               ; preds = %77, %18
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %28 = icmp ne %struct.pbuf* %27, null
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %76

46:                                               ; preds = %34, %31
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %72, %46
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %81

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %48

75:                                               ; preds = %48
  store i64 0, i64* %8, align 8
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %79 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %78, i32 0, i32 2
  %80 = load %struct.pbuf*, %struct.pbuf** %79, align 8
  store %struct.pbuf* %80, %struct.pbuf** %9, align 8
  br label %22

81:                                               ; preds = %17, %70, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
