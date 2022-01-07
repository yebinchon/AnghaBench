; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbtoxsockbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbtoxsockbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i16 }
%struct.xsockbuf = type { i16, i32, i32, i32, i32, i32, i32 }

@hz = common dso_local global i32 0, align 4
@tick = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbtoxsockbuf(%struct.sockbuf* %0, %struct.xsockbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.xsockbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.xsockbuf* %1, %struct.xsockbuf** %4, align 8
  %5 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %6 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %9 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %14 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %19 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %21 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %24 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %29 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %34 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @hz, align 4
  %40 = mul nsw i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = sext i16 %41 to i32
  %43 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 4
  %47 = sext i16 %46 to i32
  %48 = load i16, i16* @tick, align 2
  %49 = sext i16 %48 to i32
  %50 = sdiv i32 %47, %49
  %51 = add nsw i32 %42, %50
  %52 = trunc i32 %51 to i16
  %53 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %54 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %53, i32 0, i32 0
  store i16 %52, i16* %54, align 4
  %55 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %56 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 4
  %58 = sext i16 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %2
  %61 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %62 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 4
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.xsockbuf*, %struct.xsockbuf** %4, align 8
  %69 = getelementptr inbounds %struct.xsockbuf, %struct.xsockbuf* %68, i32 0, i32 0
  store i16 1, i16* %69, align 4
  br label %70

70:                                               ; preds = %67, %60, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
