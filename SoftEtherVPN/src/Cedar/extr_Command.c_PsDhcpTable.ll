; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDhcpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"DHCP_DHCP_ID\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DHCP_LEASED_TIME\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DHCP_EXPIRE_TIME\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"DHCP_MAC_ADDRESS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DHCP_IP_ADDRESS\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"DHCP_HOSTNAME\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsDhcpTable(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 %34(%struct.TYPE_16__* %35, i32 %36)
  %38 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %38, i64* %5, align 8
  br label %176

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @ParseCommandList(%struct.TYPE_16__* %40, i8* %41, i32* %42, i32* null, i32 0)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %47, i64* %5, align 8
  br label %176

48:                                               ; preds = %39
  %49 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @StrCpy(i32 %51, i32 4, i32* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ScEnumDHCP(i32 %58, %struct.TYPE_14__* %13)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @ERR_NO_ERROR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @CmdPrintError(%struct.TYPE_16__* %64, i64 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @FreeParamValueList(i32* %67)
  %69 = load i64, i64* %12, align 8
  store i64 %69, i64* %5, align 8
  br label %176

70:                                               ; preds = %48
  %71 = call i32* (...) @CtNew()
  store i32* %71, i32** %14, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @CtInsertColumn(i32* %72, i32 %73, i32 0)
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @CtInsertColumn(i32* %75, i32 %76, i32 0)
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @CtInsertColumn(i32* %78, i32 %79, i32 0)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %83 = call i32 @CtInsertColumn(i32* %81, i32 %82, i32 0)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %86 = call i32 @CtInsertColumn(i32* %84, i32 %85, i32 0)
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @CtInsertColumn(i32* %87, i32 %88, i32 0)
  store i64 0, i64* %15, align 8
  br label %90

90:                                               ; preds = %165, %70
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %168

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %98
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %16, align 8
  %100 = load i32, i32* @MAX_SIZE, align 4
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %17, align 8
  %103 = alloca i32, i64 %101, align 16
  store i64 %101, i64* %18, align 8
  %104 = load i32, i32* @MAX_SIZE, align 4
  %105 = zext i32 %104 to i64
  %106 = alloca i32, i64 %105, align 16
  store i64 %105, i64* %19, align 8
  %107 = load i32, i32* @MAX_SIZE, align 4
  %108 = zext i32 %107 to i64
  %109 = alloca i32, i64 %108, align 16
  store i64 %108, i64* %20, align 8
  %110 = load i32, i32* @MAX_SIZE, align 4
  %111 = zext i32 %110 to i64
  %112 = alloca i32, i64 %111, align 16
  store i64 %111, i64* %21, align 8
  %113 = load i32, i32* @MAX_SIZE, align 4
  %114 = zext i32 %113 to i64
  %115 = alloca i32, i64 %114, align 16
  store i64 %114, i64* %22, align 8
  %116 = load i32, i32* @MAX_SIZE, align 4
  %117 = zext i32 %116 to i64
  %118 = alloca i32, i64 %117, align 16
  store i64 %117, i64* %23, align 8
  %119 = load i32, i32* @MAX_SIZE, align 4
  %120 = zext i32 %119 to i64
  %121 = alloca i8, i64 %120, align 16
  store i64 %120, i64* %24, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @UniToStru(i32* %103, i32 %124)
  %126 = mul nuw i64 4, %105
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SystemToLocal64(i32 %130)
  %132 = call i32 @GetDateTimeStrEx64(i32* %106, i32 %127, i32 %131, i32* null)
  %133 = mul nuw i64 4, %108
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @SystemToLocal64(i32 %137)
  %139 = call i32 @GetDateTimeStrEx64(i32* %109, i32 %134, i32 %138, i32* null)
  %140 = trunc i64 %120 to i32
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @MacToStr(i8* %121, i32 %140, i32 %143)
  %145 = mul nuw i64 4, %111
  %146 = trunc i64 %145 to i32
  %147 = call i32 @StrToUni(i32* %112, i32 %146, i8* %121)
  %148 = trunc i64 %120 to i32
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @IPToStr32(i8* %121, i32 %148, i32 %151)
  %153 = mul nuw i64 4, %114
  %154 = trunc i64 %153 to i32
  %155 = call i32 @StrToUni(i32* %115, i32 %154, i8* %121)
  %156 = mul nuw i64 4, %117
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @StrToUni(i32* %118, i32 %157, i8* %160)
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @CtInsert(i32* %162, i32* %103, i32* %106, i32* %109, i32* %112, i32* %115, i32* %118)
  %164 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %164)
  br label %165

165:                                              ; preds = %95
  %166 = load i64, i64* %15, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %15, align 8
  br label %90

168:                                              ; preds = %90
  %169 = load i32*, i32** %14, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = call i32 @CtFreeEx(i32* %169, %struct.TYPE_16__* %170, i32 1)
  br label %172

172:                                              ; preds = %168
  %173 = call i32 @FreeRpcEnumDhcp(%struct.TYPE_14__* %13)
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @FreeParamValueList(i32* %174)
  store i64 0, i64* %5, align 8
  br label %176

176:                                              ; preds = %172, %63, %46, %31
  %177 = load i64, i64* %5, align 8
  ret i64 %177
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumDHCP(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @MacToStr(i8*, i32, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32 @IPToStr32(i8*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumDhcp(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
