; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_skip_id3v2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_skip_id3v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @mpc_demux_skip_id3v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_demux_skip_id3v2(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i32 @mpc_demux_fill(%struct.TYPE_7__* %7, i32 3, i32 0)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @memcmp(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call i32 @mpc_demux_fill(%struct.TYPE_7__* %17, i32 10, i32 0)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = call i32 @mpc_bits_read(%struct.TYPE_9__* %20, i32 24)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = call i32 @mpc_bits_read(%struct.TYPE_9__* %23, i32 16)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = call i32 @mpc_bits_read(%struct.TYPE_9__* %26, i32 8)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = and i32 %30, 16
  store i32 %31, i32* %5, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = and i32 %33, 15
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %37, i32* %2, align 4
  br label %113

38:                                               ; preds = %16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = call i32 @mpc_bits_read(%struct.TYPE_9__* %40, i32 8)
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i32 @mpc_bits_read(%struct.TYPE_9__* %44, i32 8)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = call i32 @mpc_bits_read(%struct.TYPE_9__* %48, i32 8)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = call i32 @mpc_bits_read(%struct.TYPE_9__* %52, i32 8)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %59, %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %62, %64
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %38
  %69 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %69, i32* %2, align 4
  br label %113

70:                                               ; preds = %38
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = shl i32 %72, 21
  store i32 %73, i32* %6, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 14
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 7
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 10
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %70
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 10
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %70
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = call i32 @mpc_demux_clear_buff(%struct.TYPE_7__* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 %102(%struct.TYPE_8__* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %95
  %110 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %110, i32* %2, align 4
  br label %113

111:                                              ; preds = %95
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %109, %68, %36, %15
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @mpc_demux_fill(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @mpc_bits_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mpc_demux_clear_buff(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
