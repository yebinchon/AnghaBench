; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_update_natt_keepalive_timestamp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_update_natt_keepalive_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.secasindex }
%struct.secasindex = type { i32, i32, i32, i32 }

@natt_now = common dso_local global i64 0, align 8
@CMP_MODE = common dso_local global i32 0, align 4
@CMP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secasvar*, %struct.secasvar*)* @key_update_natt_keepalive_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_update_natt_keepalive_timestamp(%struct.secasvar* %0, %struct.secasvar* %1) #0 {
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.secasvar*, align 8
  %5 = alloca %struct.secasindex, align 4
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store %struct.secasvar* %1, %struct.secasvar** %4, align 8
  %6 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %7 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %8 = icmp eq %struct.secasvar* %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %11 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @natt_now, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  br label %73

16:                                               ; preds = %9
  %17 = call i32 @bzero(%struct.secasindex* %5, i32 16)
  %18 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %5, i32 0, i32 2
  %19 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %20 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %22, i32 0, i32 3
  %24 = call i32 @memcpy(i32* %18, i32* %23, i32 4)
  %25 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %5, i32 0, i32 3
  %26 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %27 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %29, i32 0, i32 2
  %31 = call i32 @memcpy(i32* %25, i32* %30, i32 4)
  %32 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %33 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %40 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %47 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %51 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @CMP_MODE, align 4
  %55 = load i32, i32* @CMP_PORT, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @key_cmpsaidx(%struct.secasindex* %49, %struct.secasindex* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %16
  %60 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %61 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* @CMP_MODE, align 4
  %65 = load i32, i32* @CMP_PORT, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @key_cmpsaidx(%struct.secasindex* %5, %struct.secasindex* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59, %16
  %70 = load i64, i64* @natt_now, align 8
  %71 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  %72 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %15, %69, %59
  ret void
}

declare dso_local i32 @bzero(%struct.secasindex*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @key_cmpsaidx(%struct.secasindex*, %struct.secasindex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
