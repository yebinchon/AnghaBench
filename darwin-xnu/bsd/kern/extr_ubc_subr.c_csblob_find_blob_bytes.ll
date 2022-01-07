; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_find_blob_bytes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csblob_find_blob_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CSMAGIC_EMBEDDED_SIGNATURE = common dso_local global i64 0, align 8
@CSSLOT_CODEDIRECTORY = common dso_local global i64 0, align 8
@CSMAGIC_CODEDIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @csblob_find_blob_bytes(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ntohl(i32 %20)
  %22 = load i64, i64* @CSMAGIC_EMBEDDED_SIGNATURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = bitcast %struct.TYPE_7__* %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ntohl(i32 %29)
  store i64 %30, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %76, %24
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohl(i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %76

47:                                               ; preds = %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ntohl(i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, 4
  %58 = load i64, i64* %14, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %99

61:                                               ; preds = %47
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = bitcast i32* %64 to i8*
  %66 = bitcast i8* %65 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %10, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ntohl(i32 %69)
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %76

74:                                               ; preds = %61
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %5, align 8
  br label %99

76:                                               ; preds = %73, %46
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %31

79:                                               ; preds = %31
  br label %98

80:                                               ; preds = %4
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @CSSLOT_CODEDIRECTORY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohl(i32 %87)
  %89 = load i64, i64* @CSMAGIC_CODEDIRECTORY, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @CSMAGIC_CODEDIRECTORY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %5, align 8
  br label %99

97:                                               ; preds = %91, %84, %80
  br label %98

98:                                               ; preds = %97, %79
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %99

99:                                               ; preds = %98, %95, %74, %60
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %100
}

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
