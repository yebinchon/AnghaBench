; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsCascadeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"SM_LINK_COLUMN_1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SM_LINK_COLUMN_2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SM_LINK_COLUMN_3\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SM_LINK_COLUMN_4\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SM_LINK_COLUMN_5\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"SM_LINK_STATUS_OFFLINE\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SM_LINK_STATUS_ONLINE\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SM_LINK_STATUS_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"SM_LINK_CONNECTING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsCascadeList(%struct.TYPE_16__* %0, i8* %1, i32* %2, i8* %3) #0 {
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
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %12, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 %31(%struct.TYPE_16__* %32, i32 %33)
  %35 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %35, i64* %5, align 8
  br label %187

36:                                               ; preds = %4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @ParseCommandList(%struct.TYPE_16__* %37, i8* %38, i32* %39, i32* null, i32 0)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %44, i64* %5, align 8
  br label %187

45:                                               ; preds = %36
  %46 = call i32 @Zero(%struct.TYPE_14__* %13, i32 24)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @StrCpy(i32 %48, i32 4, i32* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ScEnumLink(i32 %55, %struct.TYPE_14__* %13)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @ERR_NO_ERROR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %45
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @CmdPrintError(%struct.TYPE_16__* %61, i64 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @FreeParamValueList(i32* %64)
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %5, align 8
  br label %187

67:                                               ; preds = %45
  %68 = call i32* (...) @CtNew()
  store i32* %68, i32** %14, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @CtInsertColumn(i32* %69, i32 %70, i32 0)
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @CtInsertColumn(i32* %72, i32 %73, i32 0)
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @CtInsertColumn(i32* %75, i32 %76, i32 0)
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 @CtInsertColumn(i32* %78, i32 %79, i32 0)
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @CtInsertColumn(i32* %81, i32 %82, i32 0)
  store i64 0, i64* %15, align 8
  br label %84

84:                                               ; preds = %176, %67
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %179

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %92
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %16, align 8
  %94 = load i32, i32* @MAX_SIZE, align 4
  %95 = zext i32 %94 to i64
  %96 = call i8* @llvm.stacksave()
  store i8* %96, i8** %17, align 8
  %97 = alloca i32, i64 %95, align 16
  store i64 %95, i64* %18, align 8
  %98 = load i32, i32* @MAX_SIZE, align 4
  %99 = zext i32 %98 to i64
  %100 = alloca i32, i64 %99, align 16
  store i64 %99, i64* %19, align 8
  %101 = load i32, i32* @MAX_SIZE, align 4
  %102 = zext i32 %101 to i64
  %103 = alloca i32, i64 %102, align 16
  store i64 %102, i64* %20, align 8
  %104 = load i32, i32* @MAX_SIZE, align 4
  %105 = zext i32 %104 to i64
  %106 = alloca i32, i64 %105, align 16
  store i64 %105, i64* %21, align 8
  %107 = mul nuw i64 4, %95
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @SystemToLocal64(i32 %111)
  %113 = call i32 @GetDateTimeStrEx64(i32* %97, i32 %108, i32 %112, i32* null)
  %114 = mul nuw i64 4, %99
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @StrToUni(i32* %100, i32 %115, i32 %118)
  %120 = mul nuw i64 4, %102
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @StrToUni(i32* %103, i32 %121, i32 %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %89
  %131 = mul nuw i64 4, %105
  %132 = trunc i64 %131 to i32
  %133 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %134 = call i32 @UniStrCpy(i32* %106, i32 %132, i32 %133)
  br label %169

135:                                              ; preds = %89
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = mul nuw i64 4, %105
  %142 = trunc i64 %141 to i32
  %143 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32 @UniStrCpy(i32* %106, i32 %142, i32 %143)
  br label %168

145:                                              ; preds = %135
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = mul nuw i64 4, %105
  %152 = trunc i64 %151 to i32
  %153 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @_E(i64 %159)
  %161 = call i32 @UniFormat(i32* %106, i32 %152, i32 %153, i64 %156, i32 %160)
  br label %167

162:                                              ; preds = %145
  %163 = mul nuw i64 4, %105
  %164 = trunc i64 %163 to i32
  %165 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %166 = call i32 @UniStrCpy(i32* %106, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %150
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %130
  %170 = load i32*, i32** %14, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @CtInsert(i32* %170, i32 %173, i32* %106, i32* %97, i32* %100, i32* %103)
  %175 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %175)
  br label %176

176:                                              ; preds = %169
  %177 = load i64, i64* %15, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %15, align 8
  br label %84

179:                                              ; preds = %84
  %180 = load i32*, i32** %14, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = call i32 @CtFreeEx(i32* %180, %struct.TYPE_16__* %181, i32 1)
  br label %183

183:                                              ; preds = %179
  %184 = call i32 @FreeRpcEnumLink(%struct.TYPE_14__* %13)
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @FreeParamValueList(i32* %185)
  store i64 0, i64* %5, align 8
  br label %187

187:                                              ; preds = %183, %60, %43, %28
  %188 = load i64, i64* %5, align 8
  ret i64 %188
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_16__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScEnumLink(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetDateTimeStrEx64(i32*, i32, i32, i32*) #1

declare dso_local i32 @SystemToLocal64(i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #1

declare dso_local i32 @UniFormat(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @_E(i64) #1

declare dso_local i32 @CtInsert(i32*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CtFreeEx(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @FreeRpcEnumLink(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
