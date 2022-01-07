; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_all.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_all() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 (...) @preprocess_packages()
  store i8* null, i8** @gen_buf, align 8
  %3 = call i32 (...) @gen_foreign_headers()
  %4 = call i32 (...) @genln()
  %5 = call i32 (...) @gen_forward_decls()
  %6 = call i32 (...) @genln()
  %7 = call i32 (...) @gen_sorted_decls()
  %8 = call i32 (...) @gen_typeinfos()
  %9 = call i32 (...) @gen_defs()
  %10 = call i32 (...) @gen_foreign_sources()
  %11 = call i32 (...) @genln()
  %12 = call i32 (...) @gen_postamble()
  %13 = load i8*, i8** @gen_buf, align 8
  store i8* %13, i8** %1, align 8
  store i8* null, i8** @gen_buf, align 8
  %14 = call i32 (...) @gen_preamble()
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  ret void
}

declare dso_local i32 @preprocess_packages(...) #1

declare dso_local i32 @gen_foreign_headers(...) #1

declare dso_local i32 @genln(...) #1

declare dso_local i32 @gen_forward_decls(...) #1

declare dso_local i32 @gen_sorted_decls(...) #1

declare dso_local i32 @gen_typeinfos(...) #1

declare dso_local i32 @gen_defs(...) #1

declare dso_local i32 @gen_foreign_sources(...) #1

declare dso_local i32 @gen_postamble(...) #1

declare dso_local i32 @gen_preamble(...) #1

declare dso_local i32 @genf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
