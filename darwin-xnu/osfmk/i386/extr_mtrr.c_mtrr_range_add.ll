; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_range_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_mtrr_range_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@KERN_NO_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"mtrr_range_add base = 0x%llx, size = 0x%llx, type = %d\0A\00", align 1
@mtrr_initialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MTRR_TYPE_UNCACHEABLE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRITECOMBINE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRITETHROUGH = common dso_local global i32 0, align 4
@MTRR_TYPE_WRITEPROTECT = common dso_local global i32 0, align 4
@MTRR_TYPE_WRITEBACK = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IA32_MTRRCAP_WC = common dso_local global i32 0, align 4
@mtrr_update_setup = common dso_local global i32 0, align 4
@mtrr_update_action = common dso_local global i32 0, align 4
@mtrr_update_teardown = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_range_add(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* @mtrr_initialized, align 8
  %19 = load i64, i64* @FALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %22, i32* %4, align 4
  br label %141

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MTRR_TYPE_UNCACHEABLE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MTRR_TYPE_WRITECOMBINE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MTRR_TYPE_WRITETHROUGH, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MTRR_TYPE_WRITEPROTECT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MTRR_TYPE_WRITEBACK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %44, i32* %4, align 4
  br label %141

45:                                               ; preds = %39, %35, %31, %27, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MTRR_TYPE_WRITECOMBINE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 0), align 8
  %51 = load i32, i32* @IA32_MTRRCAP_WC, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %55, i32* %4, align 4
  br label %141

56:                                               ; preds = %49, %45
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 1048576
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 1), align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %63, i32* %4, align 4
  br label %141

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 4096
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @LSB(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @LSB(i32 %77)
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %67, %64
  %81 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %81, i32* %4, align 4
  br label %141

82:                                               ; preds = %75, %72
  %83 = call i32 (...) @MTRR_LOCK()
  store i32 0, i32* %12, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 1), align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mtrr_state, i32 0, i32 2), align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %8, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %9, align 8
  br label %114

99:                                               ; preds = %88
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @var_range_overlap(%struct.TYPE_5__* %100, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %9, align 8
  br label %117

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %117

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %84

117:                                              ; preds = %112, %107, %84
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = icmp ne %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = icmp eq i64 %123, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @var_range_encode(%struct.TYPE_5__* %127, i32 %128, i32 %129, i32 %130, i32 1)
  %132 = load i32, i32* @mtrr_update_setup, align 4
  %133 = load i32, i32* @mtrr_update_action, align 4
  %134 = load i32, i32* @mtrr_update_teardown, align 4
  %135 = call i32 @mp_rendezvous(i32 %132, i32 %133, i32 %134, i32* null)
  br label %136

136:                                              ; preds = %126, %120
  %137 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %117
  %139 = call i32 (...) @MTRR_UNLOCK()
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %80, %62, %54, %43, %21
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @LSB(i32) #1

declare dso_local i32 @MTRR_LOCK(...) #1

declare dso_local i32 @var_range_overlap(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @var_range_encode(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @mp_rendezvous(i32, i32, i32, i32*) #1

declare dso_local i32 @MTRR_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
