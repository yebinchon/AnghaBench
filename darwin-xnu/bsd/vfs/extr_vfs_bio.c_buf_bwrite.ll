; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_bwrite.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@B_ASYNC = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4
@B_ERROR = common dso_local global i32 0, align 4
@nbdwrite = common dso_local global i32 0, align 4
@TR_BUFWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buf_bwrite(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %9 = call %struct.TYPE_18__* (...) @current_proc()
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %7, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = call i64 @brecover_data(%struct.TYPE_19__* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %127

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @B_ASYNC, align 4
  %28 = call i32 @ISSET(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @B_DELWRI, align 4
  %36 = call i32 @ISSET(i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @B_READ, align 4
  %41 = load i32, i32* @B_DONE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @B_ERROR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @B_DELWRI, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CLR(i32 %39, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = call i32 @OSAddAtomicLong(i32 -1, i32* @nbdwrite)
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = call i32 @buf_reassign(%struct.TYPE_19__* %59, %struct.TYPE_17__* %60)
  br label %78

62:                                               ; preds = %55
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = icmp ne %struct.TYPE_18__* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = call i32 @OSIncrementAtomicLong(i32* %75)
  br label %77

77:                                               ; preds = %70, %65, %62
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* @TR_BUFWRITE, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pack(%struct.TYPE_17__* %81, i32 %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @trace(i32 %80, i32 %85, i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = call i32 @OSAddAtomic(i32 1, i32* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = call i32 @VNOP_STRATEGY(%struct.TYPE_19__* %93)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %79
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = call i32 @buf_biowait(%struct.TYPE_19__* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = call i32 @buf_reassign(%struct.TYPE_19__* %103, %struct.TYPE_17__* %104)
  br label %122

106:                                              ; preds = %97
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = icmp ne %struct.TYPE_18__* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = icmp ne %struct.TYPE_16__* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = call i32 @OSIncrementAtomicLong(i32* %119)
  br label %121

121:                                              ; preds = %114, %109, %106
  br label %122

122:                                              ; preds = %121, %102
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %124 = call i32 @buf_brelse(%struct.TYPE_19__* %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %122, %21
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_18__* @current_proc(...) #1

declare dso_local i64 @brecover_data(%struct.TYPE_19__*) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @OSAddAtomicLong(i32, i32*) #1

declare dso_local i32 @buf_reassign(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @trace(i32, i32, i32) #1

declare dso_local i32 @pack(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @VNOP_STRATEGY(%struct.TYPE_19__*) #1

declare dso_local i32 @buf_biowait(%struct.TYPE_19__*) #1

declare dso_local i32 @buf_brelse(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
