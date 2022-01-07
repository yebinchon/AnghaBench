; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadIPsec.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadIPsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_11__ = type { i64, i8** }

@.str = private unnamed_addr constant [13 x i8] c"IPsec_Secret\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"L2TP_DefaultHub\00", align 1
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"L2TP_Raw\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"L2TP_IPsec\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EtherIP_IPsec\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"EtherIP_IDSettingsList\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"UserName\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"EncryptedPassword\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadIPsec(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %120

20:                                               ; preds = %16
  %21 = call i32 @Zero(%struct.TYPE_13__* %5, i32 48)
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CfgGetStr(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 4)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CfgGetStr(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 4)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %20
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @CfgGetBool(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @CfgGetBool(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @CfgGetBool(i32* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %35, %20
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @IPsecServerSetServices(i32 %48, %struct.TYPE_13__* %5)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @CfgGetFolder(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %120

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = call %struct.TYPE_11__* @CfgEnumFolderToTokenList(i32* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %119

59:                                               ; preds = %54
  store i64 0, i64* %8, align 8
  br label %60

60:                                               ; preds = %113, %59
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32* @CfgGetFolder(i32* %73, i8* %74)
  store i32* %75, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %112

78:                                               ; preds = %66
  %79 = call i32 @Zero(%struct.TYPE_13__* %11, i32 48)
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @StrCpy(i32 %81, i32 4, i8* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CfgGetStr(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 4)
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CfgGetStr(i32* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 4)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32* @CfgGetBuf(i32* %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %78
  %97 = load i32*, i32** %12, align 8
  %98 = call i8* @DecryptPassword2(i32* %97)
  store i8* %98, i8** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @StrCpy(i32 %100, i32 4, i8* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @Free(i8* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @AddEtherIPId(i32 %107, %struct.TYPE_13__* %11)
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @FreeBuf(i32* %109)
  br label %111

111:                                              ; preds = %96, %78
  br label %112

112:                                              ; preds = %111, %66
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %60

116:                                              ; preds = %60
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = call i32 @FreeToken(%struct.TYPE_11__* %117)
  br label %119

119:                                              ; preds = %116, %54
  br label %120

120:                                              ; preds = %19, %119, %45
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @CfgGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i32 @IPsecServerSetServices(i32, %struct.TYPE_13__*) #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @CfgEnumFolderToTokenList(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i8* @DecryptPassword2(i32*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @AddEtherIPId(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
