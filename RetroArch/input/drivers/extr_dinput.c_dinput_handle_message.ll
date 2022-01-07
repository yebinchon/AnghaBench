; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_handle_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.pointer_status = type { i8* }

@.str = private unnamed_addr constant [79 x i8] c"[DINPUT]: dinput_handle_message: pointer allocation in WM_POINTERDOWN failed.\0A\00", align 1
@DBT_DEVICEARRIVAL = common dso_local global i32 0, align 4
@DBT_DEVICEREMOVECOMPLETE = common dso_local global i32 0, align 4
@DBT_DEVTYP_DEVICEINTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dinput_handle_message(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dinput_input*, align 8
  %11 = alloca %struct.pointer_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pointer_status*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.dinput_input*
  store %struct.dinput_input* %16, %struct.dinput_input** %10, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %109 [
    i32 132, label %18
    i32 130, label %27
    i32 129, label %45
    i32 128, label %52
    i32 134, label %66
    i32 131, label %67
    i32 133, label %88
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @GET_X_LPARAM(i32 %19)
  %21 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %22 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @GET_Y_LPARAM(i32 %23)
  %25 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %26 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  br label %109

27:                                               ; preds = %4
  %28 = call i64 @malloc(i32 8)
  %29 = inttoptr i64 %28 to %struct.pointer_status*
  store %struct.pointer_status* %29, %struct.pointer_status** %11, align 8
  %30 = load %struct.pointer_status*, %struct.pointer_status** %11, align 8
  %31 = icmp ne %struct.pointer_status* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %110

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @GET_POINTERID_WPARAM(i32 %35)
  %37 = load %struct.pointer_status*, %struct.pointer_status** %11, align 8
  %38 = getelementptr inbounds %struct.pointer_status, %struct.pointer_status* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pointer_status*, %struct.pointer_status** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dinput_pointer_store_pos(%struct.pointer_status* %39, i32 %40)
  %42 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %43 = load %struct.pointer_status*, %struct.pointer_status** %11, align 8
  %44 = call i32 @dinput_add_pointer(%struct.dinput_input* %42, %struct.pointer_status* %43)
  store i32 1, i32* %5, align 4
  br label %110

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @GET_POINTERID_WPARAM(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @dinput_delete_pointer(%struct.dinput_input* %49, i32 %50)
  store i32 1, i32* %5, align 4
  br label %110

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @GET_POINTERID_WPARAM(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call %struct.pointer_status* @dinput_find_pointer(%struct.dinput_input* %56, i32 %57)
  store %struct.pointer_status* %58, %struct.pointer_status** %14, align 8
  %59 = load %struct.pointer_status*, %struct.pointer_status** %14, align 8
  %60 = icmp ne %struct.pointer_status* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.pointer_status*, %struct.pointer_status** %14, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dinput_pointer_store_pos(%struct.pointer_status* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %52
  store i32 1, i32* %5, align 4
  br label %110

66:                                               ; preds = %4
  br label %109

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @HIWORD(i32 %68)
  %70 = trunc i64 %69 to i16
  %71 = sext i16 %70 to i32
  %72 = sdiv i32 %71, 120
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %76 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @HIWORD(i32 %78)
  %80 = trunc i64 %79 to i16
  %81 = sext i16 %80 to i32
  %82 = sdiv i32 %81, 120
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %86 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %77
  br label %109

88:                                               ; preds = %4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @HIWORD(i32 %89)
  %91 = trunc i64 %90 to i16
  %92 = sext i16 %91 to i32
  %93 = sdiv i32 %92, 120
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %97 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @HIWORD(i32 %99)
  %101 = trunc i64 %100 to i16
  %102 = sext i16 %101 to i32
  %103 = sdiv i32 %102, 120
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.dinput_input*, %struct.dinput_input** %10, align 8
  %107 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %106, i32 0, i32 3
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %98
  br label %109

109:                                              ; preds = %4, %108, %87, %66, %18
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %65, %45, %34, %32
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @GET_X_LPARAM(i32) #1

declare dso_local i32 @GET_Y_LPARAM(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i8* @GET_POINTERID_WPARAM(i32) #1

declare dso_local i32 @dinput_pointer_store_pos(%struct.pointer_status*, i32) #1

declare dso_local i32 @dinput_add_pointer(%struct.dinput_input*, %struct.pointer_status*) #1

declare dso_local i32 @dinput_delete_pointer(%struct.dinput_input*, i32) #1

declare dso_local %struct.pointer_status* @dinput_find_pointer(%struct.dinput_input*, i32) #1

declare dso_local i64 @HIWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
