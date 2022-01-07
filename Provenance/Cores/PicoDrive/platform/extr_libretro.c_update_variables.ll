; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_update_variables.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_update_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_variable = type { i8*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"picodrive_input1\00", align 1
@RETRO_ENVIRONMENT_GET_VARIABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"picodrive_input2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"picodrive_sprlim\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@POPT_DIS_SPRITE_LIM = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"picodrive_ramcart\00", align 1
@POPT_EN_MCD_RAMCART = common dso_local global i32 0, align 4
@POPT_EN_DRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_variables() #0 {
  %1 = alloca %struct.retro_variable, align 8
  %2 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  store i32* null, i32** %2, align 8
  %3 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @RETRO_ENVIRONMENT_GET_VARIABLE, align 4
  %5 = call i64 @environ_cb(i32 %4, %struct.retro_variable* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @input_name_to_val(i32* %13)
  %15 = call i32 @PicoSetInputDevice(i32 0, i32 %14)
  br label %16

16:                                               ; preds = %11, %7, %0
  %17 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @RETRO_ENVIRONMENT_GET_VARIABLE, align 4
  %20 = call i64 @environ_cb(i32 %19, %struct.retro_variable* %1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @input_name_to_val(i32* %28)
  %30 = call i32 @PicoSetInputDevice(i32 1, i32 %29)
  br label %31

31:                                               ; preds = %26, %22, %16
  %32 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @RETRO_ENVIRONMENT_GET_VARIABLE, align 4
  %35 = call i64 @environ_cb(i32 %34, %struct.retro_variable* %1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @strcmp(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @POPT_DIS_SPRITE_LIM, align 4
  %48 = load i32, i32* @PicoOpt, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @PicoOpt, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @POPT_DIS_SPRITE_LIM, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @PicoOpt, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* @PicoOpt, align 4
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %37, %31
  %57 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @RETRO_ENVIRONMENT_GET_VARIABLE, align 4
  %60 = call i64 @environ_cb(i32 %59, %struct.retro_variable* %1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %1, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @strcmp(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @POPT_EN_MCD_RAMCART, align 4
  %73 = load i32, i32* @PicoOpt, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @PicoOpt, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load i32, i32* @POPT_EN_MCD_RAMCART, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @PicoOpt, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* @PicoOpt, align 4
  br label %80

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %62, %56
  ret void
}

declare dso_local i64 @environ_cb(i32, %struct.retro_variable*) #1

declare dso_local i32 @PicoSetInputDevice(i32, i32) #1

declare dso_local i32 @input_name_to_val(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
