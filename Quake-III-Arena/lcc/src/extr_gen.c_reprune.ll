; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_reprune.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_reprune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.node*)* }
%struct.node = type { %struct.TYPE_4__, %struct.node** }
%struct.TYPE_4__ = type { i64, %struct.node** }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"(reprune changes %x from %x to %x)\0A\00", align 1
@IR = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.node**, i32, i32, %struct.node*)* @reprune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reprune(%struct.node** %0, i32 %1, i32 %2, %struct.node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node, align 8
  %11 = alloca %struct.node*, align 8
  store %struct.node** %0, %struct.node*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.node* %3, %struct.node** %9, align 8
  %12 = load %struct.node**, %struct.node*** %6, align 8
  %13 = load %struct.node*, %struct.node** %12, align 8
  store %struct.node* %13, %struct.node** %11, align 8
  %14 = load %struct.node*, %struct.node** %11, align 8
  %15 = icmp eq %struct.node* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %5, align 4
  br label %84

22:                                               ; preds = %16
  %23 = load %struct.node*, %struct.node** %11, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.node*, %struct.node** %11, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 1
  %31 = load %struct.node**, %struct.node*** %30, align 8
  %32 = getelementptr inbounds %struct.node*, %struct.node** %31, i64 1
  %33 = load %struct.node*, %struct.node** %11, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load %struct.node**, %struct.node*** %34, align 8
  %36 = getelementptr inbounds %struct.node*, %struct.node** %35, i64 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.node*, %struct.node** %9, align 8
  %40 = call i32 @reprune(%struct.node** %36, i32 %37, i32 %38, %struct.node* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.node*, %struct.node** %9, align 8
  %43 = call i32 @reprune(%struct.node** %32, i32 %40, i32 %41, %struct.node* %42)
  store i32 %43, i32* %5, align 4
  br label %84

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = load %struct.node**, %struct.node*** %6, align 8
  %52 = load %struct.node**, %struct.node*** %6, align 8
  %53 = load %struct.node*, %struct.node** %52, align 8
  %54 = load %struct.node*, %struct.node** %9, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.node**, %struct.node*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.node*, %struct.node** %57, i64 %59
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = call i32 @fprint(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.node** %51, %struct.node* %53, %struct.node* %61)
  %63 = call i32 @debug(i32 %62)
  %64 = load %struct.node*, %struct.node** %9, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.node**, %struct.node*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.node*, %struct.node** %67, i64 %69
  %71 = load %struct.node*, %struct.node** %70, align 8
  %72 = load %struct.node**, %struct.node*** %6, align 8
  store %struct.node* %71, %struct.node** %72, align 8
  %73 = load %struct.node*, %struct.node** %9, align 8
  %74 = bitcast %struct.node* %10 to i8*
  %75 = bitcast %struct.node* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IR, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32 (%struct.node*)*, i32 (%struct.node*)** %78, align 8
  %80 = call i32 %79(%struct.node* %10)
  br label %81

81:                                               ; preds = %49, %45
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %28, %20
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @fprint(i32, i8*, %struct.node**, %struct.node*, %struct.node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
