; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcSecureList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcSecureList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SEC_COLUMN1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SEC_COLUMN2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SEC_COLUMN3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SEC_COLUMN4\00", align 1
@SECURE_IC_CARD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"SEC_SMART_CARD\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SEC_USB_TOKEN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcSecureList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @ParseCommandList(i32* %25, i8* %26, i32* %27, i32* null, i32 0)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %32, i64* %5, align 8
  br label %128

33:                                               ; preds = %4
  %34 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CcEnumSecure(i32 %37, %struct.TYPE_8__* %13)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @ERR_NO_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %33
  %43 = load i32, i32* @MAX_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %16, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %17, align 8
  %47 = load i32, i32* @MAX_SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %18, align 8
  %50 = load i32, i32* @MAX_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %19, align 8
  %53 = call i32* (...) @CtNew()
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @CtInsertColumn(i32* %54, i32* %55, i32 0)
  %57 = load i32*, i32** %14, align 8
  %58 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @CtInsertColumn(i32* %57, i32* %58, i32 0)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @CtInsertColumn(i32* %60, i32* %61, i32 0)
  %63 = load i32*, i32** %14, align 8
  %64 = call i32* @_UU(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @CtInsertColumn(i32* %63, i32* %64, i32 0)
  store i64 0, i64* %15, align 8
  br label %66

66:                                               ; preds = %107, %42
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %21, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @UniToStru(i32* %46, i32 %79)
  %81 = mul nuw i64 4, %48
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @StrToUni(i32* %49, i32 %82, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SECURE_IC_CARD, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %71
  %93 = call i32* @_UU(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %96

94:                                               ; preds = %71
  %95 = call i32* @_UU(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32* [ %93, %92 ], [ %95, %94 ]
  store i32* %97, i32** %20, align 8
  %98 = mul nuw i64 4, %51
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @StrToUni(i32* %52, i32 %99, i32 %102)
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = call i32 @CtInsert(i32* %104, i32* %46, i32* %49, i32* %105, i32* %52)
  br label %107

107:                                              ; preds = %96
  %108 = load i64, i64* %15, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %15, align 8
  br label %66

110:                                              ; preds = %66
  %111 = load i32*, i32** %14, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @CtFreeEx(i32* %111, i32* %112, i32 1)
  %114 = call i32 @CiFreeClientEnumSecure(%struct.TYPE_8__* %13)
  %115 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %115)
  br label %116

116:                                              ; preds = %110, %33
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* @ERR_NO_ERROR, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32*, i32** %6, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @CmdPrintError(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @FreeParamValueList(i32* %125)
  %127 = load i64, i64* %12, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %124, %31
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CcEnumSecure(i32, %struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

declare dso_local i32 @UniToStru(i32*, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

declare dso_local i32 @CiFreeClientEnumSecure(%struct.TYPE_8__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
