; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_init_bank_ledgers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_init_bank_ledgers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@bank_ledger_template = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Bank ledger\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't create bank ledger template\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cpu_time\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"couldn't create cpu_time entry for bank ledger template\00", align 1
@bank_ledgers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"energy\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"nj\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"couldn't create energy entry for bank ledger template\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_bank_ledgers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bank_ledgers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @bank_ledger_template, align 8
  %4 = icmp eq i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = call i32* @ledger_template_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @ledger_entry_add(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bank_ledgers, i32 0, i32 0), align 4
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @ledger_entry_add(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bank_ledgers, i32 0, i32 1), align 4
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @ledger_template_complete(i32* %26)
  %28 = load i32*, i32** %1, align 8
  store i32* %28, i32** @bank_ledger_template, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ledger_template_create(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ledger_entry_add(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @ledger_template_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
