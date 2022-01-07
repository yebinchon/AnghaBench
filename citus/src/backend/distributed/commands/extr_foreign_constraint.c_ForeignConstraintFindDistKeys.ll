; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ForeignConstraintFindDistKeys.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ForeignConstraintFindDistKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CONSTROID = common dso_local global i32 0, align 4
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@Anum_pg_constraint_confkey = common dso_local global i32 0, align 4
@INT2OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32*)* @ForeignConstraintFindDistKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ForeignConstraintFindDistKeys(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 -1, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32, i32* @CONSTROID, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  %26 = call i32 @SysCacheGetAttr(i32 %23, i32 %24, i32 %25, i32* %17)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @CONSTROID, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @Anum_pg_constraint_confkey, align 4
  %30 = call i32 @SysCacheGetAttr(i32 %27, i32 %28, i32 %29, i32* %17)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @DatumGetArrayTypeP(i32 %31)
  %33 = load i32, i32* @INT2OID, align 4
  %34 = call i32 @deconstruct_array(i32 %32, i32 %33, i32 2, i32 1, i8 signext 115, i32** %12, i32* null, i32* %13)
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @DatumGetArrayTypeP(i32 %35)
  %37 = load i32, i32* @INT2OID, align 4
  %38 = call i32 @deconstruct_array(i32 %36, i32 %37, i32 2, i32 1, i8 signext 115, i32** %15, i32* null, i32* %16)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %85, %5
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DatumGetInt16(i32 %53)
  store i64 %54, i64* %19, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @DatumGetInt16(i32 %59)
  store i64 %60, i64* %20, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %20, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %63, %48
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %19, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %75, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  br label %44

88:                                               ; preds = %44
  ret void
}

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @deconstruct_array(i32, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i32 @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetInt16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
