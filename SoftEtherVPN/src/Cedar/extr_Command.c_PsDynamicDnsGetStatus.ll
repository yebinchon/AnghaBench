; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDynamicDnsGetStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsDynamicDnsGetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32 }

@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SM_DDNS_FQDN_EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CMD_DynamicDnsGetStatus_PRINT_FQDN\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"CMD_DynamicDnsGetStatus_PRINT_HOSTNAME\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"CMD_DynamicDnsGetStatus_PRINT_SUFFIX\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"CMD_DynamicDnsGetStatus_PRINT_IPv4\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"CMD_DynamicDnsGetStatus_PRINT_IPv6\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsDynamicDnsGetStatus(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @ParseCommandList(i32* %19, i8* %20, i32* %21, i32* null, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %26, i64* %5, align 8
  br label %155

27:                                               ; preds = %4
  %28 = call i32 @Zero(%struct.TYPE_6__* %13, i32 40)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ScGetDDnsClientStatus(i32 %31, %struct.TYPE_6__* %13)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ERR_NO_ERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @CmdPrintError(i32* %37, i64 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @FreeParamValueList(i32* %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %5, align 8
  br label %155

43:                                               ; preds = %27
  %44 = call i32* (...) @CtNewStandard()
  store i32* %44, i32** %14, align 8
  %45 = load i32, i32* @MAX_SIZE, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %15, align 8
  %48 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @IsEmptyStr(i32 %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = mul nuw i64 4, %46
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @StrToUni(i32* %48, i32 %55, i32 %57)
  br label %64

59:                                               ; preds = %43
  %60 = mul nuw i64 4, %46
  %61 = trunc i64 %60 to i32
  %62 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @UniStrCpy(i32* %48, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @CtInsert(i32* %65, i32 %66, i32* %48)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IsEmptyStr(i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = mul nuw i64 4, %46
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @StrToUni(i32* %48, i32 %74, i32 %76)
  br label %83

78:                                               ; preds = %64
  %79 = mul nuw i64 4, %46
  %80 = trunc i64 %79 to i32
  %81 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @UniStrCpy(i32* %48, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @_UU(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i32 @CtInsert(i32* %84, i32 %85, i32* %48)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @IsEmptyStr(i32 %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = mul nuw i64 4, %46
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @StrToUni(i32* %48, i32 %93, i32 %95)
  br label %102

97:                                               ; preds = %83
  %98 = mul nuw i64 4, %46
  %99 = trunc i64 %98 to i32
  %100 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %101 = call i32 @UniStrCpy(i32* %48, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @_UU(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @CtInsert(i32* %103, i32 %104, i32* %48)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ERR_NO_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = mul nuw i64 4, %46
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @StrToUni(i32* %48, i32 %112, i32 %114)
  br label %123

116:                                              ; preds = %102
  %117 = mul nuw i64 4, %46
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @_E(i64 %120)
  %122 = call i32 @UniStrCpy(i32* %48, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %116, %110
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %126 = call i32 @CtInsert(i32* %124, i32 %125, i32* %48)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ERR_NO_ERROR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = mul nuw i64 4, %46
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @StrToUni(i32* %48, i32 %133, i32 %135)
  br label %144

137:                                              ; preds = %123
  %138 = mul nuw i64 4, %46
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @_E(i64 %141)
  %143 = call i32 @UniStrCpy(i32* %48, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %137, %131
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %147 = call i32 @CtInsert(i32* %145, i32 %146, i32* %48)
  %148 = load i32*, i32** %14, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @CtFree(i32* %148, i32* %149)
  %151 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %152

152:                                              ; preds = %144
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @FreeParamValueList(i32* %153)
  store i64 0, i64* %5, align 8
  br label %155

155:                                              ; preds = %152, %36, %25
  %156 = load i64, i64* %5, align 8
  ret i64 %156
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ScGetDDnsClientStatus(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNewStandard(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*) #1

declare dso_local i32 @_E(i64) #1

declare dso_local i32 @CtFree(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
