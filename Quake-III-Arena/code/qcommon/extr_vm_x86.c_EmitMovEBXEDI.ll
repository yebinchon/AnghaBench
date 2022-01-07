; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitMovEBXEDI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitMovEBXEDI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_MOV_EDI_EAX = common dso_local global i64 0, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"8B D8\00", align 1
@qfalse = common dso_local global i32 0, align 4
@pop1 = common dso_local global i64 0, align 8
@OP_DIVI = common dso_local global i64 0, align 8
@OP_DIVU = common dso_local global i64 0, align 8
@OP_MULI = common dso_local global i64 0, align 8
@OP_MULU = common dso_local global i64 0, align 8
@OP_STORE4 = common dso_local global i64 0, align 8
@OP_STORE2 = common dso_local global i64 0, align 8
@OP_STORE1 = common dso_local global i64 0, align 8
@OP_CONST = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@lastConst = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"8B 1F\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitMovEBXEDI(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @LastCommand, align 8
  %7 = load i64, i64* @LAST_COMMAND_MOV_EDI_EAX, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @compiledOfs, align 4
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* @compiledOfs, align 4
  %12 = load i32, i32* @compiledOfs, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @instruction, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %12, i32* %19, align 4
  %20 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load i64, i64* @pop1, align 8
  %24 = load i64, i64* @OP_DIVI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @pop1, align 8
  %28 = load i64, i64* @OP_DIVU, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @pop1, align 8
  %32 = load i64, i64* @OP_MULI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @pop1, align 8
  %36 = load i64, i64* @OP_MULU, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @pop1, align 8
  %40 = load i64, i64* @OP_STORE4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @pop1, align 8
  %44 = load i64, i64* @OP_STORE2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @pop1, align 8
  %48 = load i64, i64* @OP_STORE1, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42, %38, %34, %30, %26, %22
  %51 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @qfalse, align 4
  store i32 %52, i32* %3, align 4
  br label %100

53:                                               ; preds = %46
  %54 = load i64, i64* @pop1, align 8
  %55 = load i64, i64* @OP_CONST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load i32*, i32** @buf, align 8
  %59 = load i32, i32* @compiledOfs, align 4
  %60 = sub nsw i32 %59, 6
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 199
  br i1 %64, label %65, label %97

65:                                               ; preds = %57
  %66 = load i32*, i32** @buf, align 8
  %67 = load i32, i32* @compiledOfs, align 4
  %68 = sub nsw i32 %67, 5
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %97

73:                                               ; preds = %65
  %74 = load i32, i32* @compiledOfs, align 4
  %75 = sub nsw i32 %74, 6
  store i32 %75, i32* @compiledOfs, align 4
  %76 = load i32, i32* @compiledOfs, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @instruction, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load i32, i32* @lastConst, align 4
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @Emit4(i32 %90)
  br label %95

92:                                               ; preds = %73
  %93 = load i32, i32* @lastConst, align 4
  %94 = call i32 @Emit4(i32 %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* @qtrue, align 4
  store i32 %96, i32* %3, align 4
  br label %100

97:                                               ; preds = %65, %57, %53
  %98 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @qfalse, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %95, %50, %9
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @EmitString(i8*) #1

declare dso_local i32 @Emit4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
