; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_writeit.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_writeit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tftphdr }
%struct.tftphdr = type { i32 }
%struct.testcase = type { i32 }

@bfs = common dso_local global %struct.TYPE_4__* null, align 8
@current = common dso_local global i64 0, align 8
@BF_FREE = common dso_local global i32 0, align 4
@BF_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*, %struct.tftphdr**, i32, i32)* @writeit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeit(%struct.testcase* %0, %struct.tftphdr** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.testcase*, align 8
  %6 = alloca %struct.tftphdr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.testcase* %0, %struct.testcase** %5, align 8
  store %struct.tftphdr** %1, %struct.tftphdr*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bfs, align 8
  %11 = load i64, i64* @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i64, i64* @current, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  store i64 %18, i64* @current, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bfs, align 8
  %20 = load i64, i64* @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BF_FREE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.testcase*, %struct.testcase** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @write_behind(%struct.testcase* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @BF_ALLOC, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bfs, align 8
  %33 = load i64, i64* @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bfs, align 8
  %37 = load i64, i64* @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.tftphdr**, %struct.tftphdr*** %6, align 8
  store volatile %struct.tftphdr* %40, %struct.tftphdr** %41, align 8
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @write_behind(%struct.testcase*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
