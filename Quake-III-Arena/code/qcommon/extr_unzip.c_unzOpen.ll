; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzOpen.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32*, i64, i64, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@UNZ_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@UNZ_ERRNO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNZ_BADZIPFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @unzOpen(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @UNZ_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %152

19:                                               ; preds = %1
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @unzlocal_SearchCentralDir(i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @fseek(i32* %27, i64 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @unzlocal_getLong(i32* %35, i64* %7)
  %37 = load i32, i32* @UNZ_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @unzlocal_getShort(i32* %42, i64* %9)
  %44 = load i32, i32* @UNZ_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @unzlocal_getShort(i32* %49, i64* %10)
  %51 = load i32, i32* @UNZ_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @unzlocal_getShort(i32* %56, i64* %58)
  %60 = load i32, i32* @UNZ_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @unzlocal_getShort(i32* %65, i64* %11)
  %67 = load i32, i32* @UNZ_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %77, %71
  %84 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %88 = call i32 @unzlocal_getLong(i32* %86, i64* %87)
  %89 = load i32, i32* @UNZ_OK, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %96 = call i32 @unzlocal_getLong(i32* %94, i64* %95)
  %97 = load i32, i32* @UNZ_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %99, %93
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = call i32 @unzlocal_getShort(i32* %102, i64* %104)
  %106 = load i32, i32* @UNZ_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @UNZ_ERRNO, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %108, %101
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %113, %115
  %117 = icmp slt i64 %111, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @UNZ_OK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @UNZ_BADZIPFILE, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %122, %118, %110
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @UNZ_OK, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @fclose(i32* %129)
  store i32* null, i32** %2, align 8
  br label %152

131:                                              ; preds = %124
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32* %132, i32** %133, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %136, %138
  %140 = sub nsw i64 %134, %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i64 %140, i64* %141, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i64 %142, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32* null, i32** %144, align 8
  %145 = call i64 @ALLOC(i32 64)
  %146 = inttoptr i64 %145 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %5, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = bitcast %struct.TYPE_4__* %147 to i8*
  %149 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 64, i1 false)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = bitcast %struct.TYPE_4__* %150 to i32*
  store i32* %151, i32** %2, align 8
  br label %152

152:                                              ; preds = %131, %128, %18
  %153 = load i32*, i32** %2, align 8
  ret i32* %153
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @unzlocal_SearchCentralDir(i32*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @unzlocal_getLong(i32*, i64*) #1

declare dso_local i32 @unzlocal_getShort(i32*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ALLOC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
