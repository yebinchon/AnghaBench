; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitMovEAXEDI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_x86.c_EmitMovEAXEDI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_MOV_EDI_EAX = common dso_local global i64 0, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [3 x i8] c"B8\00", align 1
@lastConst = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"8B 07\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @EmitMovEAXEDI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitMovEAXEDI(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i64, i64* @LastCommand, align 8
  %4 = load i64, i64* @LAST_COMMAND_MOV_EDI_EAX, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @compiledOfs, align 4
  %8 = sub nsw i32 %7, 2
  store i32 %8, i32* @compiledOfs, align 4
  %9 = load i32, i32* @compiledOfs, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @instruction, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %9, i32* %16, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load i64, i64* @pop1, align 8
  %19 = load i64, i64* @OP_DIVI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @pop1, align 8
  %23 = load i64, i64* @OP_DIVU, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @pop1, align 8
  %27 = load i64, i64* @OP_MULI, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @pop1, align 8
  %31 = load i64, i64* @OP_MULU, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @pop1, align 8
  %35 = load i64, i64* @OP_STORE4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @pop1, align 8
  %39 = load i64, i64* @OP_STORE2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @pop1, align 8
  %43 = load i64, i64* @OP_STORE1, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17
  br label %82

46:                                               ; preds = %41
  %47 = load i64, i64* @pop1, align 8
  %48 = load i64, i64* @OP_CONST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load i32*, i32** @buf, align 8
  %52 = load i32, i32* @compiledOfs, align 4
  %53 = sub nsw i32 %52, 6
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 199
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load i32*, i32** @buf, align 8
  %60 = load i32, i32* @compiledOfs, align 4
  %61 = sub nsw i32 %60, 5
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 7
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load i32, i32* @compiledOfs, align 4
  %68 = sub nsw i32 %67, 6
  store i32 %68, i32* @compiledOfs, align 4
  %69 = load i32, i32* @compiledOfs, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @instruction, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @lastConst, align 4
  %79 = call i32 @Emit4(i32 %78)
  br label %82

80:                                               ; preds = %58, %50, %46
  %81 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %66, %45, %6
  ret void
}

declare dso_local i32 @EmitString(i8*) #1

declare dso_local i32 @Emit4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
