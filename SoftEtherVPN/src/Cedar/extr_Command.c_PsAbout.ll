; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAbout.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsAbout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i8*)* }
%struct.TYPE_18__ = type { i32 }

@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"|legal.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 13, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"D_ABOUT@S_INFO3\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"D_ABOUT@S_INFO4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PsAbout(%struct.TYPE_17__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @ParseCommandList(%struct.TYPE_17__* %13, i8* %14, i8* %15, i32* null, i32 0)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %20, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = call %struct.TYPE_18__* @ReadDump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = call i32 @CmdPrintAbout(%struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = call i32 %27(%struct.TYPE_17__* %28, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %21
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %34 = call i32 @SeekBufToEnd(%struct.TYPE_18__* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %36 = call i32 @WriteBufChar(%struct.TYPE_18__* %35, i32 13)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %38 = call i32 @WriteBufChar(%struct.TYPE_18__* %37, i32 10)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %40 = call i32 @WriteBufChar(%struct.TYPE_18__* %39, i32 0)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @CopyUtfToUni(i32 %43)
  store i8* %44, i8** %12, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 %47(%struct.TYPE_17__* %48, i8* %49)
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @Free(i8* %51)
  br label %53

53:                                               ; preds = %32, %21
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 %56(%struct.TYPE_17__* %57, i8* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call i32 %62(%struct.TYPE_17__* %63, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 %67(%struct.TYPE_17__* %68, i8* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = call i32 %73(%struct.TYPE_17__* %74, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = call i32 @CmdPrintAbout(%struct.TYPE_17__* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_17__*, i8*)** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = call i32 %80(%struct.TYPE_17__* %81, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @FreeParamValueList(i32* %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %86 = call i32 @FreeBuf(%struct.TYPE_18__* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %53, %19
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32* @ParseCommandList(%struct.TYPE_17__*, i8*, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ReadDump(i8*) #1

declare dso_local i32 @CmdPrintAbout(%struct.TYPE_17__*) #1

declare dso_local i32 @SeekBufToEnd(%struct.TYPE_18__*) #1

declare dso_local i32 @WriteBufChar(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @CopyUtfToUni(i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i8* @_UU(i8*) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
