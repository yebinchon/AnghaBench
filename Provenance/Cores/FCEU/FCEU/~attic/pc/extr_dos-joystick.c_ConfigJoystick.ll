; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_ConfigJoystick.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_ConfigJoystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ConfigJoystick.genb = internal global i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [21 x i8] c"** Press button for \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0A\0A Joystick button configuration:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"   Push and release the button to map to the virtual joystick.\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"   If you do not wish to assign a button, wait a few seconds\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"   and the configuration will continue.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"   Press enter to continue...\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s\22Select\22.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s\22Start\22.\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s\22B\22.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s\22A\22.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%s\22Rapid fire B\22.\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"%s\22Rapid fire A\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ConfigJoystick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConfigJoystick() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %6 = call i32 (...) @getchar()
  %7 = load i8*, i8** @ConfigJoystick.genb, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %7)
  %9 = call i32 @BConfig(i32 2)
  %10 = load i8*, i8** @ConfigJoystick.genb, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  %12 = call i32 @BConfig(i32 3)
  %13 = load i8*, i8** @ConfigJoystick.genb, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %13)
  %15 = call i32 @BConfig(i32 1)
  %16 = load i8*, i8** @ConfigJoystick.genb, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %16)
  %18 = call i32 @BConfig(i32 0)
  %19 = load i8*, i8** @ConfigJoystick.genb, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %19)
  %21 = call i32 @BConfig(i32 5)
  %22 = load i8*, i8** @ConfigJoystick.genb, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %22)
  %24 = call i32 @BConfig(i32 4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @BConfig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
