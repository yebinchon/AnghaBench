; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_panic_display_process_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_panic_display_process_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@__const.panic_display_process_name.proc_name = private unnamed_addr constant [17 x i8] c"Unknown\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [55 x i8] c"\0ABSD process name corresponding to current thread: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @panic_display_process_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_display_process_name() #0 {
  %1 = alloca [17 x i8], align 16
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = bitcast [17 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.panic_display_process_name.proc_name, i32 0, i32 0), i64 17, i1 false)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = call %struct.TYPE_4__* (...) @current_thread()
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = ptrtoint i32* %6 to i32
  %8 = ptrtoint %struct.TYPE_3__** %2 to i32
  %9 = call i32 @ml_nofault_copy(i32 %7, i32 %8, i32 8)
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %12, label %34

12:                                               ; preds = %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = ptrtoint i32* %14 to i32
  %16 = ptrtoint i8** %3 to i32
  %17 = call i32 @ml_nofault_copy(i32 %15, i32 %16, i32 8)
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @proc_name_address(i8* %24)
  %26 = trunc i64 %25 to i32
  %27 = ptrtoint [17 x i8]* %1 to i32
  %28 = call i32 @ml_nofault_copy(i32 %26, i32 %27, i32 17)
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 16
  store i8 0, i8* %31, align 16
  br label %32

32:                                               ; preds = %30, %23, %20
  br label %33

33:                                               ; preds = %32, %12
  br label %34

34:                                               ; preds = %33, %0
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* %1, i64 0, i64 0
  %36 = call i32 @paniclog_append_noflush(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ml_nofault_copy(i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @current_thread(...) #2

declare dso_local i64 @proc_name_address(i8*) #2

declare dso_local i32 @paniclog_append_noflush(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
