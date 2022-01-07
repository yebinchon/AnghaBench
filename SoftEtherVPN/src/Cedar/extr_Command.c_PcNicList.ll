; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PcNicList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"CM_VLAN_COLUMN_1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CM_VLAN_COLUMN_2\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CM_VLAN_COLUMN_3\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CM_VLAN_COLUMN_4\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"CM_VLAN_ENABLED\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CM_VLAN_DISABLED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PcNicList(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  br label %129

33:                                               ; preds = %4
  %34 = call i32 @Zero(%struct.TYPE_8__* %13, i32 16)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CcEnumVLan(i32 %37, %struct.TYPE_8__* %13)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @ERR_NO_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %33
  %43 = call i32* (...) @CtNew()
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @CtInsertColumn(i32* %44, i32* %45, i32 0)
  %47 = load i32*, i32** %14, align 8
  %48 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @CtInsertColumn(i32* %47, i32* %48, i32 0)
  %50 = load i32*, i32** %14, align 8
  %51 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @CtInsertColumn(i32* %50, i32* %51, i32 0)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @CtInsertColumn(i32* %53, i32* %54, i32 0)
  store i64 0, i64* %15, align 8
  br label %56

56:                                               ; preds = %109, %42
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %56
  %62 = load i32, i32* @MAX_SIZE, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %16, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %17, align 8
  %66 = load i32, i32* @MAX_SIZE, align 4
  %67 = zext i32 %66 to i64
  %68 = alloca i32, i64 %67, align 16
  store i64 %67, i64* %18, align 8
  %69 = load i32, i32* @MAX_SIZE, align 4
  %70 = zext i32 %69 to i64
  %71 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %21, align 8
  %77 = mul nuw i64 4, %63
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @StrToUni(i32* %65, i32 %78, i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %61
  %88 = call i32* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %91

89:                                               ; preds = %61
  %90 = call i32* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32* [ %88, %87 ], [ %90, %89 ]
  store i32* %92, i32** %20, align 8
  %93 = mul nuw i64 4, %67
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @StrToUni(i32* %68, i32 %94, i32 %97)
  %99 = mul nuw i64 4, %70
  %100 = trunc i64 %99 to i32
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @StrToUni(i32* %71, i32 %100, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = load i32*, i32** %20, align 8
  %107 = call i32 @CtInsert(i32* %105, i32* %65, i32* %106, i32* %68, i32* %71)
  %108 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %109

109:                                              ; preds = %91
  %110 = load i64, i64* %15, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %56

112:                                              ; preds = %56
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @CtFreeEx(i32* %113, i32* %114, i32 1)
  br label %116

116:                                              ; preds = %112, %33
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
  %125 = call i32 @CiFreeClientEnumVLan(%struct.TYPE_8__* %13)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @FreeParamValueList(i32* %126)
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %124, %31
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @CcEnumVLan(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32*, i32) #1

declare dso_local i32* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @CtInsert(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, i32*, i32) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @CiFreeClientEnumVLan(%struct.TYPE_8__*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
