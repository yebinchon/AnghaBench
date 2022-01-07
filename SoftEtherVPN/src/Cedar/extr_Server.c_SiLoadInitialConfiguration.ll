; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadInitialConfiguration.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadInitialConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SERVER_FILE_SAVE_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@FARM_DEFAULT_WEIGHT = common dso_local global i32 0, align 4
@CLIENT_DEFAULT_KEEPALIVE_HOST = common dso_local global i32 0, align 4
@KEEP_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@CONNECTION_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DEFAULT_USERNAME_HUB_SEPARATOR = common dso_local global i32 0, align 4
@OPENVPN_UDP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadInitialConfiguration(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = icmp eq %struct.TYPE_15__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %136

9:                                                ; preds = %1
  %10 = load i32, i32* @SERVER_FILE_SAVE_INTERVAL_DEFAULT, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @FARM_DEFAULT_WEIGHT, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = call i32 @SiLoadGlobalParamsCfg(i32* null)
  %19 = call i32 @Zero(%struct.TYPE_16__* %3, i32 36)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 80, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CLIENT_DEFAULT_KEEPALIVE_HOST, align 4
  %25 = call i32 @StrCpy(i32 %23, i32 4, i32 %24)
  %26 = load i32, i32* @KEEP_INTERVAL_DEFAULT, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @CONNECTION_UDP, align 4
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 11
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @Lock(i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @StrCpy(i32 %48, i32 4, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 11
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Unlock(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Sha0(i32 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %75 = call i32 @SiInitCipherName(%struct.TYPE_15__* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = call i32 @SiInitDefaultServerCert(%struct.TYPE_15__* %76)
  %78 = load i32, i32* @DEFAULT_USERNAME_HUB_SEPARATOR, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = call i32 @SiInitDefaultHubList(%struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %9
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = call i32 @NewDDNSClient(%struct.TYPE_14__* %94, i32* null, i32* null)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %9
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = call i32 @SiInitListenerList(%struct.TYPE_15__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 3
  store i32 1, i32* %113, align 4
  br label %129

114:                                              ; preds = %98
  %115 = call i32 @Zero(%struct.TYPE_16__* %5, i32 36)
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32 1, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @OPENVPN_UDP_PORT, align 4
  %121 = call i32 @ToStr(i32 %119, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = call i32 @SiSetOpenVPNAndSSTPConfig(%struct.TYPE_15__* %123, %struct.TYPE_16__* %5)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 4
  store i32 0, i32* %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 5
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %114, %107
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @NewEraser(i32 %132, i32 0)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %8
  ret void
}

declare dso_local i32 @SiLoadGlobalParamsCfg(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @SiInitCipherName(%struct.TYPE_15__*) #1

declare dso_local i32 @SiInitDefaultServerCert(%struct.TYPE_15__*) #1

declare dso_local i32 @SiInitDefaultHubList(%struct.TYPE_15__*) #1

declare dso_local i32 @NewDDNSClient(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @SiInitListenerList(%struct.TYPE_15__*) #1

declare dso_local i32 @ToStr(i32, i32) #1

declare dso_local i32 @SiSetOpenVPNAndSSTPConfig(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @NewEraser(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
