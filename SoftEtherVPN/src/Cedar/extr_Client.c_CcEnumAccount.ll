; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcEnumAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcEnumAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"EnumAccount\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CcEnumAccount(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = icmp eq %struct.TYPE_17__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %18, i64* %3, align 8
  br label %96

19:                                               ; preds = %14
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @RpcCall(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @RpcIsOk(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %19
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @InRpcClientEnumAccount(%struct.TYPE_16__* %28, i32* %29)
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %85, %27
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %40, i64 %41
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IsEmptyStr(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %37
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = call i32 @Zero(%struct.TYPE_14__* %11, i32 16)
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @UniStrCpy(i32 %57, i32 4, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = call i64 @CcGetAccount(%struct.TYPE_17__* %62, %struct.TYPE_14__* %11)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ERR_NO_ERROR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @StrCpy(i32 %70, i32 4, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = call i32 @CiFreeClientGetAccount(%struct.TYPE_14__* %11)
  br label %83

83:                                               ; preds = %67, %54
  br label %84

84:                                               ; preds = %83, %49, %37
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %31

88:                                               ; preds = %31
  br label %92

89:                                               ; preds = %19
  %90 = load i32*, i32** %6, align 8
  %91 = call i64 @RpcGetError(i32* %90)
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @FreePack(i32* %93)
  %95 = load i64, i64* %7, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %92, %17
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32* @RpcCall(i32, i8*, i32*) #1

declare dso_local i64 @RpcIsOk(i32*) #1

declare dso_local i32 @InRpcClientEnumAccount(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i64 @CcGetAccount(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @CiFreeClientGetAccount(%struct.TYPE_14__*) #1

declare dso_local i64 @RpcGetError(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
