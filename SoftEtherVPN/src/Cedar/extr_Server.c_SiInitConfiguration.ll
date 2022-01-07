; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiInitConfiguration.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiInitConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_16__*, i32, i32, i32*, i64, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@SERVER_FILE_SAVE_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"LS_LOAD_CONFIG_1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LS_LOAD_CONFIG_3\00", align 1
@MEM_FIFO_REALLOC_MEM_SIZE = common dso_local global i32 0, align 4
@server_reset_setting = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"LS_LOAD_CONFIG_2\00", align 1
@OSTYPE_LINUX = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"LS_INIT_SAVE_THREAD\00", align 1
@SiSaverThread = common dso_local global i32 0, align 4
@SERVER_FILE_SAVE_INTERVAL_USERMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiInitConfiguration(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = icmp eq %struct.TYPE_15__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %147

6:                                                ; preds = %1
  %7 = load i32, i32* @SERVER_FILE_SAVE_INTERVAL_DEFAULT, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = call i32 @NewIPsecServer(%struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 15
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %6
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = call i32 @NewOpenVpnServerUdp(%struct.TYPE_16__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = call i32 (%struct.TYPE_16__*, i8*, ...) @SLog(%struct.TYPE_16__* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = call i32 @SiLoadConfigurationFile(%struct.TYPE_15__* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = call i32 (...) @InitEth()
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = call i32 (%struct.TYPE_16__*, i8*, ...) @SLog(%struct.TYPE_16__* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = call i32 @SiLoadInitialConfiguration(%struct.TYPE_15__* %53)
  %55 = load i32, i32* @MEM_FIFO_REALLOC_MEM_SIZE, align 4
  %56 = call i32 @SetFifoCurrentReallocMemSize(i32 %55)
  store i32 0, i32* @server_reset_setting, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = call i32 (%struct.TYPE_16__*, i8*, ...) @SLog(%struct.TYPE_16__* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %47
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 13
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = call %struct.TYPE_13__* (...) @GetOsInfo()
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OSTYPE_LINUX, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (...) @SetLinuxArpFilter()
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @DisableDosProtect()
  br label %92

90:                                               ; preds = %83
  %91 = call i32 (...) @EnableDosProtect()
  br label %92

92:                                               ; preds = %90, %88
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 10
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %130

102:                                              ; preds = %92
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %120 = call i32 @NewAzureClient(%struct.TYPE_16__* %118, %struct.TYPE_15__* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @AcSetEnable(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %115, %109, %102, %92
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %136, 1000
  %138 = call i32 (%struct.TYPE_16__*, i8*, ...) @SLog(%struct.TYPE_16__* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = call i32 (...) @NewEvent()
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @SiSaverThread, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = call i32 @NewThread(i32 %142, %struct.TYPE_15__* %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %130, %5
  ret void
}

declare dso_local i32 @NewIPsecServer(%struct.TYPE_16__*) #1

declare dso_local i32 @NewOpenVpnServerUdp(%struct.TYPE_16__*) #1

declare dso_local i32 @SLog(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @SiLoadConfigurationFile(%struct.TYPE_15__*) #1

declare dso_local i32 @InitEth(...) #1

declare dso_local i32 @SiLoadInitialConfiguration(%struct.TYPE_15__*) #1

declare dso_local i32 @SetFifoCurrentReallocMemSize(i32) #1

declare dso_local %struct.TYPE_13__* @GetOsInfo(...) #1

declare dso_local i32 @SetLinuxArpFilter(...) #1

declare dso_local i32 @DisableDosProtect(...) #1

declare dso_local i32 @EnableDosProtect(...) #1

declare dso_local i32 @NewAzureClient(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @AcSetEnable(i32, i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
