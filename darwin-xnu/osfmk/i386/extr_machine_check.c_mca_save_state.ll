; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_save_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i8*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }

@mca_control_MSR_present = common dso_local global i64 0, align 8
@IA32_MCG_CTL = common dso_local global i32 0, align 4
@IA32_MCG_STATUS = common dso_local global i32 0, align 4
@mca_error_bank_count = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @mca_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_save_state(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = call i32 (...) @ml_get_interrupts_enabled()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = call i64 (...) @get_preemption_level()
  %9 = icmp sgt i64 %8, 0
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i1 [ true, %1 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %113

17:                                               ; preds = %10
  %18 = load i64, i64* @mca_control_MSR_present, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @IA32_MCG_CTL, align 4
  %22 = call i64 @rdmsr64(i32 %21)
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i64 [ %22, %20 ], [ 0, %23 ]
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @IA32_MCG_STATUS, align 4
  %29 = call i64 @rdmsr64(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = bitcast i32* %36 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %95, %24
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @mca_error_bank_count, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @IA32_MCi_CTL(i32 %43)
  %45 = call i64 @rdmsr64(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @IA32_MCi_STATUS(i32 %48)
  %50 = call i64 @rdmsr64(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  br label %95

61:                                               ; preds = %42
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @IA32_MCi_MISC(i32 %69)
  %71 = call i64 @rdmsr64(i32 %70)
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i64 [ %71, %68 ], [ 0, %72 ]
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @IA32_MCi_ADDR(i32 %84)
  %86 = call i64 @rdmsr64(i32 %85)
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i64 [ %86, %83 ], [ 0, %87 ]
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** @TRUE, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %88, %60
  %96 = load i32, i32* %4, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 1
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %3, align 8
  br label %38

100:                                              ; preds = %38
  %101 = call %struct.TYPE_13__* (...) @x86_package()
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp eq %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = call %struct.TYPE_13__* (...) @x86_package()
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @rdmsr64(i32) #1

declare dso_local i32 @IA32_MCi_CTL(i32) #1

declare dso_local i32 @IA32_MCi_STATUS(i32) #1

declare dso_local i32 @IA32_MCi_MISC(i32) #1

declare dso_local i32 @IA32_MCi_ADDR(i32) #1

declare dso_local %struct.TYPE_13__* @x86_package(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
