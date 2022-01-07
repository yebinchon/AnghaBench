; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_module_excluded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_module_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i64, i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@ignore_fbt_blacklist = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"AppleACPIEC\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AppleACPIPlatform\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"AppleRTC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"IOACPIFamily\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"AppleIntelCPUPowerManagement\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"AppleProfile\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"AppleIntelProfile\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"AppleEFI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_module_excluded(%struct.modctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.modctl*, align 8
  store %struct.modctl* %0, %struct.modctl** %3, align 8
  %4 = load %struct.modctl*, %struct.modctl** %3, align 8
  %5 = call i32 @MOD_FBT_DONE(%struct.modctl* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.modctl*, %struct.modctl** %3, align 8
  %11 = getelementptr inbounds %struct.modctl, %struct.modctl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.modctl*, %struct.modctl** %3, align 8
  %16 = getelementptr inbounds %struct.modctl, %struct.modctl* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %99

21:                                               ; preds = %14
  %22 = load %struct.modctl*, %struct.modctl** %3, align 8
  %23 = getelementptr inbounds %struct.modctl, %struct.modctl* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %99

28:                                               ; preds = %21
  %29 = load i64, i64* @ignore_fbt_blacklist, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %28
  %34 = load %struct.modctl*, %struct.modctl** %3, align 8
  %35 = getelementptr inbounds %struct.modctl, %struct.modctl* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @strstr(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %99

41:                                               ; preds = %33
  %42 = load %struct.modctl*, %struct.modctl** %3, align 8
  %43 = getelementptr inbounds %struct.modctl, %struct.modctl* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @strstr(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %2, align 4
  br label %99

49:                                               ; preds = %41
  %50 = load %struct.modctl*, %struct.modctl** %3, align 8
  %51 = getelementptr inbounds %struct.modctl, %struct.modctl* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @strstr(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %99

57:                                               ; preds = %49
  %58 = load %struct.modctl*, %struct.modctl** %3, align 8
  %59 = getelementptr inbounds %struct.modctl, %struct.modctl* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @strstr(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %2, align 4
  br label %99

65:                                               ; preds = %57
  %66 = load %struct.modctl*, %struct.modctl** %3, align 8
  %67 = getelementptr inbounds %struct.modctl, %struct.modctl* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32* @strstr(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %2, align 4
  br label %99

73:                                               ; preds = %65
  %74 = load %struct.modctl*, %struct.modctl** %3, align 8
  %75 = getelementptr inbounds %struct.modctl, %struct.modctl* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @strstr(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %2, align 4
  br label %99

81:                                               ; preds = %73
  %82 = load %struct.modctl*, %struct.modctl** %3, align 8
  %83 = getelementptr inbounds %struct.modctl, %struct.modctl* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @strstr(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %81
  %90 = load %struct.modctl*, %struct.modctl** %3, align 8
  %91 = getelementptr inbounds %struct.modctl, %struct.modctl* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @strstr(i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %95, %87, %79, %71, %63, %55, %47, %39, %31, %26, %19
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MOD_FBT_DONE(%struct.modctl*) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
