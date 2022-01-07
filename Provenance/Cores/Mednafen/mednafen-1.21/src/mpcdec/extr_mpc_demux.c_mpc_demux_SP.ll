; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_SP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_SP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @mpc_demux_SP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_demux_SP(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i64 @mpc_demux_pos(%struct.TYPE_9__* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = call i32 @mpc_bits_get_size(i32* %15, i32* %9)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = mul nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mpc_demux_seek(%struct.TYPE_9__* %17, i64 %24, i32 11)
  %26 = call i32 @MPC_AUTO_FAIL(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = call i32 @mpc_bits_get_block(i32* %28, %struct.TYPE_10__* %10)
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @memcmp(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = mul nsw i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mpc_demux_fill(%struct.TYPE_9__* %51, i32 %53, i32 0)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %34
  %59 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %34
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = call i32 @mpc_demux_ST(%struct.TYPE_9__* %61)
  %63 = call i32 @MPC_AUTO_FAIL(i32 %62)
  br label %64

64:                                               ; preds = %60, %3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 11, %67
  %69 = call i32 @mpc_demux_seek(%struct.TYPE_9__* %65, i64 %66, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @mpc_demux_pos(%struct.TYPE_9__*) #1

declare dso_local i32 @mpc_bits_get_size(i32*, i32*) #1

declare dso_local i32 @MPC_AUTO_FAIL(i32) #1

declare dso_local i32 @mpc_demux_seek(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @mpc_bits_get_block(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @mpc_demux_fill(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mpc_demux_ST(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
