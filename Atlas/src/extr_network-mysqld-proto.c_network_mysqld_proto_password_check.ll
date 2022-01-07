; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_check.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_password_check(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* null, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @g_return_val_if_fail(i32 %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @g_return_val_if_fail(i32 %23, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* null, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @g_return_val_if_fail(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 20, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @g_return_val_if_fail(i32 %33, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* null, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @g_return_val_if_fail(i32 %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 20, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @g_return_val_if_fail(i32 %43, i32 %44)
  %46 = call i32* @g_string_new(i32* null)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @network_mysqld_proto_password_unscramble(i32* %47, i8* %48, i32 %49, i8* %50, i32 %51, i8* %52, i32 %53)
  %55 = call i32* @g_string_new(i32* null)
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @S(i32* %57)
  %59 = call i32 @network_mysqld_proto_password_hash(i32* %56, i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @S(i32* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @strleq(i32 %61, i8* %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @g_string_free(i32* %65, i32 %66)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @g_string_free(i32* %68, i32 %69)
  %71 = load i32, i32* %15, align 4
  ret i32 %71
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local i32 @network_mysqld_proto_password_unscramble(i32*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @network_mysqld_proto_password_hash(i32*, i32) #1

declare dso_local i32 @S(i32*) #1

declare dso_local i32 @strleq(i32, i8*, i32) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
