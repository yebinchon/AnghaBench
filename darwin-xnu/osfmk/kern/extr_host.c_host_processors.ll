; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processors.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_processors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@HOST_PRIV_NULL = common dso_local global i32* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@realhost = common dso_local global i32 0, align 4
@processor_count = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@processor_list = common dso_local global %struct.TYPE_4__* null, align 8
@processor_list_lock = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_processors(i32* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** @HOST_PRIV_NULL, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, @realhost
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @processor_count, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @kalloc(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %36, i32* %4, align 4
  br label %92

37:                                               ; preds = %18
  %38 = load i8*, i8** %10, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %39, %struct.TYPE_4__*** %9, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @processor_list, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %8, align 8
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i32 1
  store %struct.TYPE_4__** %42, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = call i32 @simple_lock(i32* @processor_list_lock)
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %57, %45
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %8, align 8
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i32 1
  store %struct.TYPE_4__** %56, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %55, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %47

60:                                               ; preds = %47
  %61 = call i32 @simple_unlock(i32* @processor_list_lock)
  br label %62

62:                                               ; preds = %60, %37
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load i64*, i64** %6, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = bitcast i8* %68 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %69, %struct.TYPE_4__*** %9, align 8
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %87, %62
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @convert_processor_to_port(%struct.TYPE_4__* %79)
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %83 = bitcast %struct.TYPE_4__** %82 to i64*
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %81, i64* %86, align 8
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %70

90:                                               ; preds = %70
  %91 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %35, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @kalloc(i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @convert_processor_to_port(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
