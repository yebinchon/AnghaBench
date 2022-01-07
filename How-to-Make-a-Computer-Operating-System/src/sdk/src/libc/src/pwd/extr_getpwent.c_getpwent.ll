; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/pwd/extr_getpwent.c_getpwent.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/pwd/extr_getpwent.c_getpwent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@_passwd_db_position = common dso_local global i32 0, align 4
@__tmp_passwd = common dso_local global %struct.passwd zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @getpwent() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @_passwd_db_position, align 4
  %4 = call i32* @myos_user_getID(i32 %3)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.passwd* null, %struct.passwd** %1, align 8
  br label %12

8:                                                ; preds = %0
  %9 = call i32 (...) @build_tmp_passwd()
  %10 = load i32, i32* @_passwd_db_position, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @_passwd_db_position, align 4
  store %struct.passwd* @__tmp_passwd, %struct.passwd** %1, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load %struct.passwd*, %struct.passwd** %1, align 8
  ret %struct.passwd* %13
}

declare dso_local i32* @myos_user_getID(i32) #1

declare dso_local i32 @build_tmp_passwd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
