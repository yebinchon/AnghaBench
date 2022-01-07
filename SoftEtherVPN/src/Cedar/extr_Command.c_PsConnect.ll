; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8* (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)* }
%struct.TYPE_17__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 86, i32 80, i32 78, i32 67, i32 77, i32 68, i32 0], align 4
@PROXY_DIRECT = common dso_local global i32 0, align 4
@CEDAR_CUI_STR = common dso_local global i32 0, align 4
@ERR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PASSWORD_1\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CMD_VPNCMD_PASSWORD_2\00", align 1
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsConnect(%struct.TYPE_16__* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_17__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %27 = load i32, i32* @SHA1_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %20, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = icmp eq %struct.TYPE_16__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %7
  %37 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %37, i64* %8, align 8
  store i32 1, i32* %23, align 4
  br label %148

38:                                               ; preds = %33
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 443, i64* %11, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* null, i8** %13, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = call i32* @NewCedar(i32* null, i32* null)
  store i32* %47, i32** %18, align 8
  %48 = call i32 @Zero(%struct.TYPE_17__* %19, i32 24)
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @UniStrCpy(i32 %50, i32 4, i8* bitcast ([7 x i32]* @.str to i8*))
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @StrCpy(i32 %53, i32 4, i8* %54)
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @PROXY_DIRECT, align 4
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @StrLen(i8* %61)
  %63 = call i32 @Sha0(i32* %30, i8* %60, i32 %62)
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @IsEmptyStr(i8* %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  store i32 1, i32* %22, align 4
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %143, %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %18, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* @CEDAR_CUI_STR, align 4
  %74 = call i32* @AdminConnectEx(i32* %71, %struct.TYPE_17__* %19, i8* %72, i32* %30, i64* %24, i32 %73)
  store i32* %74, i32** %17, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %125

77:                                               ; preds = %70
  %78 = load i64, i64* %24, align 8
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %24, align 8
  %80 = load i64, i64* @ERR_ACCESS_DENIED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load i32, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32 (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32 %93(%struct.TYPE_16__* %94, i8* %95)
  br label %97

97:                                               ; preds = %90, %87
  store i32 1, i32* %22, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i8* (%struct.TYPE_16__*, i8*)*, i8* (%struct.TYPE_16__*, i8*)** %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i8* %100(%struct.TYPE_16__* %101, i8* %102)
  store i8* %103, i8** %25, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32 (%struct.TYPE_16__*, i8*)*, i32 (%struct.TYPE_16__*, i8*)** %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = call i32 %106(%struct.TYPE_16__* %107, i8* bitcast ([1 x i32]* @.str.3 to i8*))
  %109 = load i8*, i8** %25, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %97
  %112 = load i8*, i8** %25, align 8
  %113 = load i8*, i8** %25, align 8
  %114 = call i32 @StrLen(i8* %113)
  %115 = call i32 @Sha0(i32* %30, i8* %112, i32 %114)
  %116 = load i8*, i8** %25, align 8
  %117 = call i32 @Free(i8* %116)
  br label %119

118:                                              ; preds = %97
  br label %144

119:                                              ; preds = %111
  br label %124

120:                                              ; preds = %82, %77
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = load i64, i64* %24, align 8
  %123 = call i32 @CmdPrintError(%struct.TYPE_16__* %121, i64 %122)
  br label %144

124:                                              ; preds = %119
  br label %143

125:                                              ; preds = %70
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = call %struct.TYPE_15__* @NewPs(%struct.TYPE_16__* %126, i32* %127, i8* %128, i64 %129, i8* %130, i8* %131, i32* %132)
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %26, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %135 = call i32 @PsMain(%struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %16, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %140 = call i32 @FreePs(%struct.TYPE_15__* %139)
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @AdminDisconnect(i32* %141)
  br label %144

143:                                              ; preds = %124
  br label %69

144:                                              ; preds = %125, %120, %118
  %145 = load i32*, i32** %18, align 8
  %146 = call i32 @ReleaseCedar(i32* %145)
  %147 = load i64, i64* %16, align 8
  store i64 %147, i64* %8, align 8
  store i32 1, i32* %23, align 4
  br label %148

148:                                              ; preds = %144, %36
  %149 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i64, i64* %8, align 8
  ret i64 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewCedar(i32*, i32*) #2

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i8*) #2

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

declare dso_local i32 @Sha0(i32*, i8*, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i32* @AdminConnectEx(i32*, %struct.TYPE_17__*, i8*, i32*, i64*, i32) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #2

declare dso_local %struct.TYPE_15__* @NewPs(%struct.TYPE_16__*, i32*, i8*, i64, i8*, i8*, i32*) #2

declare dso_local i32 @PsMain(%struct.TYPE_15__*) #2

declare dso_local i32 @FreePs(%struct.TYPE_15__*) #2

declare dso_local i32 @AdminDisconnect(i32*) #2

declare dso_local i32 @ReleaseCedar(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
