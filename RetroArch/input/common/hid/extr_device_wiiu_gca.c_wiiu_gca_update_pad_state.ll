; ModuleID = '/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_wiiu_gca.c_wiiu_gca_update_pad_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/common/hid/extr_device_wiiu_gca.c_wiiu_gca_update_pad_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, i8*, i32)* }

@GCA_PORT_POWERED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [38 x i8] c"[gca]: Gamepad at port %d connected.\0A\00", align 1
@wiiu_gca_pad_connection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"[gca]: Failed to register pad.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[gca]: Gamepad at port %d disconnected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @wiiu_gca_update_pad_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_gca_update_pad_state(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %99

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %96, %15
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 37
  br i1 %18, label %19, label %99

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sdiv i32 %20, 9
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %5, align 1
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @GCA_PORT_POWERED, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %19
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = icmp eq %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = call %struct.TYPE_9__* @hid_pad_register(%struct.TYPE_10__* %48, i32* @wiiu_gca_pad_connection)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %54
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %6, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = icmp eq %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %44
  %66 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %99

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i32 %73(i32 %76, i8* %82, i32 9)
  br label %95

84:                                               ; preds = %19
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @wiiu_gca_unregister_pad(%struct.TYPE_10__* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %84
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 9
  store i32 %98, i32* %3, align 4
  br label %16

99:                                               ; preds = %14, %65, %16
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @hid_pad_register(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @wiiu_gca_unregister_pad(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
