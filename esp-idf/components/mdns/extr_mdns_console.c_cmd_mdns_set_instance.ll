; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_set_instance.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_set_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32** }

@mdns_set_instance_args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ERROR: Bad arguments!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_mdns_set_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_mdns_set_instance(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @arg_parse(i32 %7, i8** %8, i8** bitcast (%struct.TYPE_4__* @mdns_set_instance_args to i8**))
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mdns_set_instance_args, i32 0, i32 1), align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @arg_print_errors(i32 %13, i32 %14, i8* %17)
  store i32 1, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mdns_set_instance_args, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mdns_set_instance_args, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mdns_instance_name_set(i32* %33)
  %35 = call i32 @ESP_ERROR_CHECK(i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %26, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @mdns_instance_name_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
