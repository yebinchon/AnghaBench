; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Tried to enable IR, will wait until handshake finishes.\0A\00", align 1
@WIIMOTE_STATE_IR_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No IR sensitivity setting selected.\00", align 1
@WIIMOTE_STATE_IR = common dso_local global i32 0, align 4
@WM_CMD_IR = common dso_local global i32 0, align 4
@WM_CMD_IR_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Disabled IR cameras for wiimote id %i.\00", align 1
@WM_REG_IR = common dso_local global i32 0, align 4
@WM_REG_IR_BLOCK1 = common dso_local global i32 0, align 4
@WM_REG_IR_BLOCK2 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WM_IR_TYPE_BASIC = common dso_local global i32 0, align 4
@WM_IR_TYPE_EXTENDED = common dso_local global i32 0, align 4
@WM_REG_IR_MODENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_ir(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %10 = icmp ne %struct.wiimote_t* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %106

12:                                               ; preds = %2
  %13 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %14 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %15 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %23 = load i32, i32* @WIIMOTE_STATE_IR_INIT, align 4
  %24 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %22, i32 %23)
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %27 = load i32, i32* @WIIMOTE_STATE_IR_INIT, align 4
  %28 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %106

30:                                               ; preds = %12
  %31 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %32 = call i32 @get_ir_sens(%struct.wiimote_t* %31, i8** %7, i8** %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @WIIUSE_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %106

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %42 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %43 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %47 = call i32 @wiiuse_status(%struct.wiimote_t* %46, i32* null)
  br label %106

48:                                               ; preds = %40
  br label %58

49:                                               ; preds = %37
  %50 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %51 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %52 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %56 = call i32 @wiiuse_status(%struct.wiimote_t* %55, i32* null)
  br label %106

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 4, i32 0
  store i32 %62, i32* %5, align 4
  %63 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %64 = load i32, i32* @WM_CMD_IR, align 4
  %65 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %63, i32 %64, i32* %5, i32 1, i32* null)
  %66 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %67 = load i32, i32* @WM_CMD_IR_2, align 4
  %68 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %66, i32 %67, i32* %5, i32 1, i32* null)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %58
  %72 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %73 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %77 = call i32 @wiiuse_status(%struct.wiimote_t* %76, i32* null)
  br label %106

78:                                               ; preds = %58
  store i32 8, i32* %5, align 4
  %79 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %80 = load i32, i32* @WM_REG_IR, align 4
  %81 = call i32 @wiiuse_write_data(%struct.wiimote_t* %79, i32 %80, i32* %5, i32 1, i32* null)
  %82 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %83 = load i32, i32* @WM_REG_IR_BLOCK1, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = call i32 @wiiuse_write_data(%struct.wiimote_t* %82, i32 %83, i32* %85, i32 9, i32* null)
  %87 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %88 = load i32, i32* @WM_REG_IR_BLOCK2, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = call i32 @wiiuse_write_data(%struct.wiimote_t* %87, i32 %88, i32* %90, i32 2, i32* null)
  %92 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %93 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %94 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %78
  %97 = load i32, i32* @WM_IR_TYPE_BASIC, align 4
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %78
  %99 = load i32, i32* @WM_IR_TYPE_EXTENDED, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %102 = load i32, i32* @WM_REG_IR_MODENUM, align 4
  %103 = call i32 @wiiuse_write_data(%struct.wiimote_t* %101, i32 %102, i32* %5, i32 1, i32* null)
  %104 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %105 = call i32 @wiiuse_status(%struct.wiimote_t* %104, i32* null)
  br label %106

106:                                              ; preds = %100, %71, %54, %45, %35, %29, %11
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIUSE_DEBUG(i8*, ...) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @get_ir_sens(%struct.wiimote_t*, i8**, i8**) #1

declare dso_local i32 @WIIUSE_ERROR(i8*) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @wiiuse_sendcmd(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wiiuse_write_data(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
