; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatStatusGet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatStatusGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32*)* }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SM_HUB_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SM_SNAT_NUM_SESSION\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"NM_STATUS_TCP\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NM_STATUS_UDP\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"NM_STATUS_ICMP\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NM_STATUS_DNS\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SM_SNAT_NUM_CLIENT\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"NM_STATUS_DHCP\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SM_SNAT_IS_KERNEL\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SM_SNAT_IS_RAW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSecureNatStatusGet(%struct.TYPE_14__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = call i32* @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 %26(%struct.TYPE_14__* %27, i32* %28)
  %30 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %30, i64* %5, align 8
  br label %154

31:                                               ; preds = %4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ParseCommandList(%struct.TYPE_14__* %32, i8* %33, i32* %34, i32* null, i32 0)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %5, align 8
  br label %154

40:                                               ; preds = %31
  %41 = call i32 @Zero(%struct.TYPE_12__* %13, i32 40)
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @StrCpy(i32 %43, i32 4, i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ScGetSecureNATStatus(i32 %50, %struct.TYPE_12__* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @ERR_NO_ERROR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @CmdPrintError(%struct.TYPE_14__* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %154

62:                                               ; preds = %40
  %63 = load i32, i32* @MAX_SIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %14, align 8
  %66 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %15, align 8
  %67 = call i32* (...) @CtNewStandard()
  store i32* %67, i32** %16, align 8
  %68 = mul nuw i64 4, %64
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @StrToUni(i32* %66, i32 %69, i32* %72)
  %74 = load i32*, i32** %16, align 8
  %75 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @CtInsert(i32* %74, i32* %75, i32* %66)
  %77 = mul nuw i64 4, %64
  %78 = trunc i64 %77 to i32
  %79 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @UniFormat(i32* %66, i32 %78, i32* %79, i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @CtInsert(i32* %83, i32* %84, i32* %66)
  %86 = mul nuw i64 4, %64
  %87 = trunc i64 %86 to i32
  %88 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @UniFormat(i32* %66, i32 %87, i32* %88, i32 %90)
  %92 = load i32*, i32** %16, align 8
  %93 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @CtInsert(i32* %92, i32* %93, i32* %66)
  %95 = mul nuw i64 4, %64
  %96 = trunc i64 %95 to i32
  %97 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @UniFormat(i32* %66, i32 %96, i32* %97, i32 %99)
  %101 = load i32*, i32** %16, align 8
  %102 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %103 = call i32 @CtInsert(i32* %101, i32* %102, i32* %66)
  %104 = mul nuw i64 4, %64
  %105 = trunc i64 %104 to i32
  %106 = call i32* @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UniFormat(i32* %66, i32 %105, i32* %106, i32 %108)
  %110 = load i32*, i32** %16, align 8
  %111 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %112 = call i32 @CtInsert(i32* %110, i32* %111, i32* %66)
  %113 = mul nuw i64 4, %64
  %114 = trunc i64 %113 to i32
  %115 = call i32* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @UniFormat(i32* %66, i32 %114, i32* %115, i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %121 = call i32 @CtInsert(i32* %119, i32* %120, i32* %66)
  %122 = load i32*, i32** %16, align 8
  %123 = call i32* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %62
  %128 = call i32* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %131

129:                                              ; preds = %62
  %130 = call i32* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32* [ %128, %127 ], [ %130, %129 ]
  %133 = call i32 @CtInsert(i32* %122, i32* %123, i32* %132)
  %134 = load i32*, i32** %16, align 8
  %135 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = call i32* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %143

141:                                              ; preds = %131
  %142 = call i32* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32* [ %140, %139 ], [ %142, %141 ]
  %145 = call i32 @CtInsert(i32* %134, i32* %135, i32* %144)
  %146 = load i32*, i32** %16, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = call i32 @CtFree(i32* %146, %struct.TYPE_14__* %147)
  %149 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %149)
  br label %150

150:                                              ; preds = %143
  %151 = call i32 @FreeRpcNatStatus(%struct.TYPE_12__* %13)
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @FreeParamValueList(i32* %152)
  store i64 0, i64* %5, align 8
  br label %154

154:                                              ; preds = %150, %55, %38, %23
  %155 = load i64, i64* %5, align 8
  ret i64 %155
}

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_14__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATStatus(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNewStandard(...) #1

declare dso_local i32 @StrToUni(i32*, i32, i32*) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*) #1

declare dso_local i32 @UniFormat(i32*, i32, i32*, i32) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeRpcNatStatus(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
