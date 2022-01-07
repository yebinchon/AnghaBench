; ModuleID = '/home/carl/AnghaBench/capstone/tests/extr_test_customized_mnem.c_test.c'
source_filename = "/home/carl/AnghaBench/capstone/tests/extr_test_customized_mnem.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@X86_INS_JNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"jnz\00", align 1
@CS_ARCH_X86 = common dso_local global i32 0, align 4
@CS_MODE_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed on cs_open() with error returned: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Disassemble X86 code with default instruction mnemonic\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"\0ANow customize engine to change mnemonic from 'JNE' to 'JNZ'\0A\00", align 1
@CS_OPT_MNEMONIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\0AReset engine to use the default mnemonic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %6 = load i32, i32* @X86_INS_JNE, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 ptrtoint ([4 x i8]* @.str to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %11 = load i32, i32* @X86_INS_JNE, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @CS_ARCH_X86, align 4
  %16 = load i32, i32* @CS_MODE_32, align 4
  %17 = call i32 @cs_open(i32 %15, i32 %16, i32* %1)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %0
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @print_insn(i32 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @CS_OPT_MNEMONIC, align 4
  %31 = ptrtoint %struct.TYPE_2__* %3 to i64
  %32 = call i32 @cs_option(i32 %29, i32 %30, i64 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @print_insn(i32 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @CS_OPT_MNEMONIC, align 4
  %38 = ptrtoint %struct.TYPE_2__* %4 to i64
  %39 = call i32 @cs_option(i32 %36, i32 %37, i64 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @print_insn(i32 %40)
  %42 = call i32 @cs_close(i32* %1)
  ret void
}

declare dso_local i32 @cs_open(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @print_insn(i32) #1

declare dso_local i32 @cs_option(i32, i32, i64) #1

declare dso_local i32 @cs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
