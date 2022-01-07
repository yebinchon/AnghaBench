; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_new_fent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkmakefile.c_new_fent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_list = type { i8*, %struct.file_list*, i64, i64, i64 }

@fcur = common dso_local global %struct.file_list* null, align 8
@ftab = common dso_local global %struct.file_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_list* @new_fent() #0 {
  %1 = alloca %struct.file_list*, align 8
  %2 = call i64 @malloc(i32 40)
  %3 = inttoptr i64 %2 to %struct.file_list*
  store %struct.file_list* %3, %struct.file_list** %1, align 8
  %4 = load %struct.file_list*, %struct.file_list** %1, align 8
  %5 = getelementptr inbounds %struct.file_list, %struct.file_list* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.file_list*, %struct.file_list** %1, align 8
  %7 = getelementptr inbounds %struct.file_list, %struct.file_list* %6, i32 0, i32 1
  store %struct.file_list* null, %struct.file_list** %7, align 8
  %8 = load %struct.file_list*, %struct.file_list** %1, align 8
  %9 = getelementptr inbounds %struct.file_list, %struct.file_list* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.file_list*, %struct.file_list** %1, align 8
  %11 = getelementptr inbounds %struct.file_list, %struct.file_list* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.file_list*, %struct.file_list** %1, align 8
  %13 = getelementptr inbounds %struct.file_list, %struct.file_list* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load %struct.file_list*, %struct.file_list** @fcur, align 8
  %15 = icmp eq %struct.file_list* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load %struct.file_list*, %struct.file_list** %1, align 8
  store %struct.file_list* %17, %struct.file_list** @ftab, align 8
  store %struct.file_list* %17, %struct.file_list** @fcur, align 8
  br label %22

18:                                               ; preds = %0
  %19 = load %struct.file_list*, %struct.file_list** %1, align 8
  %20 = load %struct.file_list*, %struct.file_list** @fcur, align 8
  %21 = getelementptr inbounds %struct.file_list, %struct.file_list* %20, i32 0, i32 1
  store %struct.file_list* %19, %struct.file_list** %21, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = load %struct.file_list*, %struct.file_list** %1, align 8
  store %struct.file_list* %23, %struct.file_list** @fcur, align 8
  %24 = load %struct.file_list*, %struct.file_list** %1, align 8
  ret %struct.file_list* %24
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
