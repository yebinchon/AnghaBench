; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_cmd_grp_set_probabilities.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_cmd_grp_set_probabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_GRP_SET_PROP = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY = common dso_local global i32 0, align 4
@MEMORYSTATUS_MPE_VERSION_1 = common dso_local global i64 0, align 8
@MEMORYSTATUS_MPE_VERSION_1_SIZE = common dso_local global i64 0, align 8
@memorystatus_global_probabilities_table = common dso_local global %struct.TYPE_7__* null, align 8
@memorystatus_global_probabilities_size = common dso_local global i64 0, align 8
@MAXCOMLEN = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @memorystatus_cmd_grp_set_probabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_cmd_grp_set_probabilities(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @USER_ADDR_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %134

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = udiv i64 %22, 16
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @kalloc(i64 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = icmp eq %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %5, align 4
  br label %134

30:                                               ; preds = %21
  %31 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %32 = load i32, i32* @BSD_MEMSTAT_GRP_SET_PROP, align 4
  %33 = call i32 @BSDDBG_CODE(i32 %31, i32 %32)
  %34 = load i32, i32* @DBG_FUNC_START, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %35, i32 %36, i64 %37, i64 0, i32 0, i32 0)
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @copyin(i64 %39, %struct.TYPE_7__* %40, i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %134

45:                                               ; preds = %30
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MEMORYSTATUS_MPE_VERSION_1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @MEMORYSTATUS_MPE_VERSION_1_SIZE, align 8
  %55 = urem i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %134

59:                                               ; preds = %52
  br label %62

60:                                               ; preds = %45
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %5, align 4
  br label %134

62:                                               ; preds = %59
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %5, align 4
  br label %134

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %63

80:                                               ; preds = %63
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 16, %81
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @kalloc(i64 %83)
  %85 = inttoptr i64 %84 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %9, align 8
  %86 = icmp eq %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %5, align 4
  br label %134

89:                                               ; preds = %80
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @memset(%struct.TYPE_7__* %90, i32 0, i64 %91)
  %93 = call i32 (...) @proc_list_lock()
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @memorystatus_global_probabilities_table, align 8
  %95 = icmp ne %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @memorystatus_global_probabilities_table, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %10, align 8
  %98 = load i64, i64* @memorystatus_global_probabilities_size, align 8
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** @memorystatus_global_probabilities_table, align 8
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* @memorystatus_global_probabilities_size, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %102

102:                                              ; preds = %129, %99
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @memorystatus_global_probabilities_table, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @MAXCOMLEN, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 @strlcpy(i32 %111, i32 %116, i64 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @memorystatus_global_probabilities_table, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  br label %129

129:                                              ; preds = %106
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %8, align 8
  br label %102

132:                                              ; preds = %102
  %133 = call i32 (...) @proc_list_unlock()
  br label %134

134:                                              ; preds = %132, %87, %74, %60, %57, %44, %28, %19
  %135 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %136 = load i32, i32* @BSD_MEMSTAT_GRP_SET_PROP, align 4
  %137 = call i32 @BSDDBG_CODE(i32 %135, i32 %136)
  %138 = load i32, i32* @DBG_FUNC_END, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @MEMORYSTATUS_FLAGS_GRP_SET_PROBABILITY, align 4
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %139, i32 %140, i64 %141, i64 %142, i32 0, i32 0)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = icmp ne %struct.TYPE_7__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = load i64, i64* %4, align 8
  %149 = call i32 @kfree(%struct.TYPE_7__* %147, i64 %148)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %150

150:                                              ; preds = %146, %134
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @kfree(%struct.TYPE_7__* %154, i64 %155)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @kalloc(i64) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @copyin(i64, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
