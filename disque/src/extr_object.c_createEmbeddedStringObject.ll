; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_createEmbeddedStringObject.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_createEmbeddedStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.sdshdr8*, i32, i32 }
%struct.sdshdr8 = type { i64, i64, i8*, i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_EMBSTR = common dso_local global i32 0, align 4
@SDS_TYPE_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @createEmbeddedStringObject(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.sdshdr8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 64, %7
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = call %struct.TYPE_4__* @zmalloc(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 1
  %14 = bitcast %struct.TYPE_4__* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sdshdr8*
  store %struct.sdshdr8* %15, %struct.sdshdr8** %6, align 8
  %16 = load i32, i32* @OBJ_STRING, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @OBJ_ENCODING_EMBSTR, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %23 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %22, i64 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store %struct.sdshdr8* %23, %struct.sdshdr8** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %32 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %35 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @SDS_TYPE_8, align 4
  %37 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %38 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %2
  %42 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %43 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @memcpy(i8* %44, i8* %45, i64 %46)
  %48 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %49 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.sdshdr8*, %struct.sdshdr8** %6, align 8
  %55 = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  %59 = call i32 @memset(i8* %56, i32 0, i64 %58)
  br label %60

60:                                               ; preds = %53, %41
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %61
}

declare dso_local %struct.TYPE_4__* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
