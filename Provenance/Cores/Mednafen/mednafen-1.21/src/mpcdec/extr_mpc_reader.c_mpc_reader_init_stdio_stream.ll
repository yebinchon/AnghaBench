; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_reader.c_mpc_reader_init_stdio_stream.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_reader.c_mpc_reader_init_stdio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }

@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@STDIO_MAGIC = common dso_local global i32 0, align 4
@MPC_TRUE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@canseek_stdio = common dso_local global i32 0, align 4
@get_size_stdio = common dso_local global i32 0, align 4
@read_stdio = common dso_local global i32 0, align 4
@seek_stdio = common dso_local global i32 0, align 4
@tell_stdio = common dso_local global i32 0, align 4
@MPC_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc_reader_init_stdio_stream(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %9 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 56)
  %10 = call %struct.TYPE_7__* @malloc(i32 56)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = call i32 @memset(%struct.TYPE_7__* %16, i32 0, i32 56)
  %18 = load i32, i32* @STDIO_MAGIC, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* @MPC_TRUE, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @SEEK_END, align 4
  %31 = call i32 @fseek(i32* %29, i32 0, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %72

35:                                               ; preds = %15
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ftell(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %72

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @fseek(i32* %49, i32 0, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %72

55:                                               ; preds = %43
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %57, align 8
  %58 = load i32, i32* @canseek_stdio, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @get_size_stdio, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @read_stdio, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @seek_stdio, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @tell_stdio, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = bitcast %struct.TYPE_7__* %68 to i8*
  %70 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 56, i1 false)
  %71 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %89

72:                                               ; preds = %54, %42, %34
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @fclose(i32* %83)
  br label %85

85:                                               ; preds = %80, %75, %72
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = call i32 @free(%struct.TYPE_7__* %86)
  %88 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %55, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
