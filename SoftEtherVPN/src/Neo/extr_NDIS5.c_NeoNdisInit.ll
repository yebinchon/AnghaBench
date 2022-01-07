; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisInit.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, %struct.TYPE_4__*, i8*, i64, i64, i64, i64, i32, i8*, i32* }

@ctx = common dso_local global %struct.TYPE_4__* null, align 8
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@ndis_wrapper_handle = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@NDIS_PACKET_TYPE_ALL_LOCAL = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_ALL_FUNCTIONAL = common dso_local global i32 0, align 4
@NEO_MEDIA = common dso_local global i64 0, align 8
@NdisHardwareStatusReady = common dso_local global i32 0, align 4
@keep_link = common dso_local global i32 0, align 4
@g_is_win8 = common dso_local global i32 0, align 4
@NdisInterfaceInternal = common dso_local global i32 0, align 4
@NDIS_ATTRIBUTE_DESERIALIZE = common dso_local global i32 0, align 4
@NDIS_ATTRIBUTE_IGNORE_PACKET_TIMEOUT = common dso_local global i32 0, align 4
@NDIS_ATTRIBUTE_IGNORE_REQUEST_TIMEOUT = common dso_local global i32 0, align 4
@NDIS_ATTRIBUTE_NO_HALT_ON_SUSPEND = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NeoNdisInit(i32* %0, i64* %1, i64* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %19, i32* %7, align 4
  br label %165

20:                                               ; preds = %6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 11
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @ndis_wrapper_handle, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %36, i32* %7, align 4
  br label %165

37:                                               ; preds = %29
  %38 = load i64, i64* @TRUE, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %47, i32* %7, align 4
  br label %165

48:                                               ; preds = %37
  %49 = load i32, i32* @NDIS_PACKET_TYPE_ALL_LOCAL, align 4
  %50 = load i32, i32* @NDIS_PACKET_TYPE_BROADCAST, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NDIS_PACKET_TYPE_DIRECTED, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NDIS_PACKET_TYPE_ALL_FUNCTIONAL, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %59

59:                                               ; preds = %73, %48
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NEO_MEDIA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* @TRUE, align 8
  store i64 %71, i64* %14, align 8
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %15, align 8
  br label %59

76:                                               ; preds = %70, %59
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* @FALSE, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %84, i32* %7, align 4
  br label %165

85:                                               ; preds = %76
  %86 = load i64, i64* %15, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 10
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  %97 = load i32, i32* @NdisHardwareStatusReady, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* @FALSE, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* @FALSE, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  store i64 %103, i64* %107, align 8
  %108 = load i32, i32* @keep_link, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %85
  %111 = load i64, i64* @TRUE, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %85
  %115 = call i64 (...) @NeoLoadRegistry()
  %116 = load i64, i64* @FALSE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i64, i64* @FALSE, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %122, i32* %7, align 4
  br label %165

123:                                              ; preds = %114
  %124 = load i32, i32* @g_is_win8, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = load i32, i32* @NdisInterfaceInternal, align 4
  %135 = call i32 @NdisMSetAttributes(i8* %129, %struct.TYPE_4__* %132, i64 %133, i32 %134)
  br label %152

136:                                              ; preds = %123
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* @NDIS_ATTRIBUTE_DESERIALIZE, align 4
  %144 = load i32, i32* @NDIS_ATTRIBUTE_IGNORE_PACKET_TIMEOUT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NDIS_ATTRIBUTE_IGNORE_REQUEST_TIMEOUT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @NDIS_ATTRIBUTE_NO_HALT_ON_SUSPEND, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @NdisInterfaceInternal, align 4
  %151 = call i32 @NdisMSetAttributesEx(i8* %139, %struct.TYPE_4__* %142, i32 16, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %136, %126
  %153 = call i32 (...) @NeoInitPacketArray()
  %154 = call i32 (...) @NeoInitControlDevice()
  %155 = call i32 (...) @NeoStartAdapter()
  %156 = load i64, i64* @FALSE, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* @TRUE, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* @FALSE, align 8
  %163 = call i32 @NeoSetConnectState(i64 %162)
  %164 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %152, %118, %80, %46, %35, %18
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i64 @NeoLoadRegistry(...) #1

declare dso_local i32 @NdisMSetAttributes(i8*, %struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @NdisMSetAttributesEx(i8*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @NeoInitPacketArray(...) #1

declare dso_local i32 @NeoInitControlDevice(...) #1

declare dso_local i32 @NeoStartAdapter(...) #1

declare dso_local i32 @NeoSetConnectState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
