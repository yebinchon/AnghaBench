; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_progend.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_progend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@pickle = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"?bogus uid count: have %d should have %d\0A\00", align 1
@rcsid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c",v\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asdl_progend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asdl_progend() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @dopending(i32* null)
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @checkuid(i32 %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @Seq_length(i32 %9)
  %11 = add nsw i32 %6, %10
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %0
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %18, %0
  %27 = call i32 @genlabel(i32 0)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @rcsid, align 4
  %31 = call i64 @strstr(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @assert(i64 %31)
  %33 = load i32, i32* @rcsid, align 4
  %34 = call i64 @strstr(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = add nsw i64 %34, 2
  %36 = call i32 @strtod(i64 %35, i32* null)
  %37 = mul nsw i32 100, %36
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @write_int(i32 %37, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pickle, align 8
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @rcc_write_program(%struct.TYPE_3__* %40, i32 %41)
  ret void
}

declare dso_local i32 @dopending(i32*) #1

declare dso_local i32 @checkuid(i32) #1

declare dso_local i32 @Seq_length(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @genlabel(i32) #1

declare dso_local i32 @write_int(i32, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @strtod(i64, i32*) #1

declare dso_local i32 @rcc_write_program(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
